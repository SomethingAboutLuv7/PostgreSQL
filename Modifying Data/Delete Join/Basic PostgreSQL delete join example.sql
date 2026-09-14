DELETE FROM member
USING denylist
WHERE member.phone = denylist.phone;