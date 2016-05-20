from contest import Contest
from notificationSender import NotificationSender 

def fix(s):
  res = ""
  for c in s:
    if not c.isalpha():
      res += "NONALPHASTART"
    break
  for c in s:
    if c == '.':
      res += 'DOT'
    else:
      res += c
  return res

class SendRating(object):
  def __init__(self, contestId):
    self.contestId = contestId

  def check(self):
    contest = Contest(self.contestId)
    if contest.ratingChanges():
      users = contest.participants()
      channels = []
      for user in users:
        channels.append(fix(user) + 'Rating')
      sender = NotificationSender('CF Contest %d, Ratings are updated!' % self.contestId, channels)
      print sender.send()
      return True
    return False