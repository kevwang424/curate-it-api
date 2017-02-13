class Auth

  ALGORITHM = 'HS256'

  def self.encrypt(hash)
    JWT.encode(hash, secret_key, ALGORITHM)
  end

  def self.decode(payload)
    JWT.decode(payload, secret_key, true, {algorithm: ALGORITHM}).first
  end


  def self.secret_key #need to move secret key to private folder
    # ENV["SECRET_KEY"]
    # temp key
    '675ba5abce956733f65e4f6c0cedcee22e34ecae94b6e63330ed070472c0210222c53b083e81cd21aa1059d5dd19d098f960599a15f53daa2df951f1eb6a81c0'
  end
  
end
