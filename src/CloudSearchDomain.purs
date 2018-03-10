

-- | <p>You use the AmazonCloudSearch2013 API to upload documents to a search domain and search those documents. </p> <p>The endpoints for submitting <code>UploadDocuments</code>, <code>Search</code>, and <code>Suggest</code> requests are domain-specific. To get the endpoints for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. The domain endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. You submit suggest requests to the search endpoint. </p> <p>For more information, see the <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide">Amazon CloudSearch Developer Guide</a>.</p>
module AWS.CloudSearchDomain where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "CloudSearchDomain" :: String


-- | <p>Retrieves a list of documents that match the specified search criteria. How you specify the search criteria depends on which query parser you use. Amazon CloudSearch supports four query parsers:</p> <ul> <li><code>simple</code>: search all <code>text</code> and <code>text-array</code> fields for the specified string. Search for phrases, individual terms, and prefixes. </li> <li><code>structured</code>: search specific fields, construct compound queries using Boolean operators, and use advanced features such as term boosting and proximity searching.</li> <li><code>lucene</code>: specify search criteria using the Apache Lucene query parser syntax.</li> <li><code>dismax</code>: specify search criteria using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html">Searching Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p> <p>The endpoint for submitting <code>Search</code> requests is domain-specific. You submit search requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
search :: forall eff. SearchRequest -> Aff (exception :: EXCEPTION | eff) SearchResponse
search = Request.request serviceName "search" 


-- | <p>Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match. </p> <p>For more information about configuring suggesters and retrieving suggestions, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html">Getting Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p> <p>The endpoint for submitting <code>Suggest</code> requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
suggest :: forall eff. SuggestRequest -> Aff (exception :: EXCEPTION | eff) SuggestResponse
suggest = Request.request serviceName "suggest" 


-- | <p>Posts a batch of documents to a search domain for indexing. A document batch is a collection of add and delete operations that represent the documents you want to add, update, or delete from your domain. Batches can be described in either JSON or XML. Each item that you want Amazon CloudSearch to return as a search result (such as a product) is represented as a document. Every document has a unique ID and one or more fields that contain the data that you want to search and return in results. Individual documents cannot contain more than 1 MB of data. The entire batch cannot exceed 5 MB. To get the best possible upload performance, group add and delete operations in batches that are close the 5 MB limit. Submitting a large volume of single-document batches can overload a domain's document service. </p> <p>The endpoint for submitting <code>UploadDocuments</code> requests is domain-specific. To get the document endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p> <p>For more information about formatting your data for Amazon CloudSearch, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html">Preparing Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>. For more information about uploading data for indexing, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html">Uploading Data</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
uploadDocuments :: forall eff. UploadDocumentsRequest -> Aff (exception :: EXCEPTION | eff) UploadDocumentsResponse
uploadDocuments = Request.request serviceName "uploadDocuments" 


newtype Adds = Adds Number
derive instance newtypeAdds :: Newtype Adds _
derive instance repGenericAdds :: Generic Adds _
instance showAdds :: Show Adds where
  show = genericShow
instance decodeAdds :: Decode Adds where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAdds :: Encode Adds where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A container for facet information. </p>
newtype Bucket = Bucket 
  { "value" :: NullOrUndefined.NullOrUndefined (String)
  , "count" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeBucket :: Newtype Bucket _
derive instance repGenericBucket :: Generic Bucket _
instance showBucket :: Show Bucket where
  show = genericShow
instance decodeBucket :: Decode Bucket where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBucket :: Encode Bucket where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Bucket from required parameters
newBucket :: Bucket
newBucket  = Bucket { "count": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }

-- | Constructs Bucket's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBucket' :: ( { "value" :: NullOrUndefined.NullOrUndefined (String) , "count" :: NullOrUndefined.NullOrUndefined (Number) } -> {"value" :: NullOrUndefined.NullOrUndefined (String) , "count" :: NullOrUndefined.NullOrUndefined (Number) } ) -> Bucket
newBucket'  customize = (Bucket <<< customize) { "count": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }



-- | <p>A container for the calculated facet values and counts.</p>
newtype BucketInfo = BucketInfo 
  { "buckets" :: NullOrUndefined.NullOrUndefined (BucketList)
  }
derive instance newtypeBucketInfo :: Newtype BucketInfo _
derive instance repGenericBucketInfo :: Generic BucketInfo _
instance showBucketInfo :: Show BucketInfo where
  show = genericShow
instance decodeBucketInfo :: Decode BucketInfo where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBucketInfo :: Encode BucketInfo where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BucketInfo from required parameters
newBucketInfo :: BucketInfo
newBucketInfo  = BucketInfo { "buckets": (NullOrUndefined Nothing) }

-- | Constructs BucketInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBucketInfo' :: ( { "buckets" :: NullOrUndefined.NullOrUndefined (BucketList) } -> {"buckets" :: NullOrUndefined.NullOrUndefined (BucketList) } ) -> BucketInfo
newBucketInfo'  customize = (BucketInfo <<< customize) { "buckets": (NullOrUndefined Nothing) }



newtype BucketList = BucketList (Array Bucket)
derive instance newtypeBucketList :: Newtype BucketList _
derive instance repGenericBucketList :: Generic BucketList _
instance showBucketList :: Show BucketList where
  show = genericShow
instance decodeBucketList :: Decode BucketList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBucketList :: Encode BucketList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where
  show = genericShow
instance decodeContentType :: Decode ContentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContentType :: Encode ContentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Cursor = Cursor String
derive instance newtypeCursor :: Newtype Cursor _
derive instance repGenericCursor :: Generic Cursor _
instance showCursor :: Show Cursor where
  show = genericShow
instance decodeCursor :: Decode Cursor where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCursor :: Encode Cursor where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Deletes = Deletes Number
derive instance newtypeDeletes :: Newtype Deletes _
derive instance repGenericDeletes :: Generic Deletes _
instance showDeletes :: Show Deletes where
  show = genericShow
instance decodeDeletes :: Decode Deletes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletes :: Encode Deletes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information about any problems encountered while processing an upload request.</p>
newtype DocumentServiceException = DocumentServiceException 
  { "status" :: NullOrUndefined.NullOrUndefined (String)
  , "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDocumentServiceException :: Newtype DocumentServiceException _
derive instance repGenericDocumentServiceException :: Generic DocumentServiceException _
instance showDocumentServiceException :: Show DocumentServiceException where
  show = genericShow
instance decodeDocumentServiceException :: Decode DocumentServiceException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDocumentServiceException :: Encode DocumentServiceException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DocumentServiceException from required parameters
newDocumentServiceException :: DocumentServiceException
newDocumentServiceException  = DocumentServiceException { "message": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs DocumentServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDocumentServiceException' :: ( { "status" :: NullOrUndefined.NullOrUndefined (String) , "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"status" :: NullOrUndefined.NullOrUndefined (String) , "message" :: NullOrUndefined.NullOrUndefined (String) } ) -> DocumentServiceException
newDocumentServiceException'  customize = (DocumentServiceException <<< customize) { "message": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



-- | <p>A warning returned by the document service when an issue is discovered while processing an upload request.</p>
newtype DocumentServiceWarning = DocumentServiceWarning 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDocumentServiceWarning :: Newtype DocumentServiceWarning _
derive instance repGenericDocumentServiceWarning :: Generic DocumentServiceWarning _
instance showDocumentServiceWarning :: Show DocumentServiceWarning where
  show = genericShow
instance decodeDocumentServiceWarning :: Decode DocumentServiceWarning where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDocumentServiceWarning :: Encode DocumentServiceWarning where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DocumentServiceWarning from required parameters
newDocumentServiceWarning :: DocumentServiceWarning
newDocumentServiceWarning  = DocumentServiceWarning { "message": (NullOrUndefined Nothing) }

-- | Constructs DocumentServiceWarning's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDocumentServiceWarning' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> DocumentServiceWarning
newDocumentServiceWarning'  customize = (DocumentServiceWarning <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DocumentServiceWarnings = DocumentServiceWarnings (Array DocumentServiceWarning)
derive instance newtypeDocumentServiceWarnings :: Newtype DocumentServiceWarnings _
derive instance repGenericDocumentServiceWarnings :: Generic DocumentServiceWarnings _
instance showDocumentServiceWarnings :: Show DocumentServiceWarnings where
  show = genericShow
instance decodeDocumentServiceWarnings :: Decode DocumentServiceWarnings where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDocumentServiceWarnings :: Encode DocumentServiceWarnings where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Expr = Expr String
derive instance newtypeExpr :: Newtype Expr _
derive instance repGenericExpr :: Generic Expr _
instance showExpr :: Show Expr where
  show = genericShow
instance decodeExpr :: Decode Expr where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExpr :: Encode Expr where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Exprs = Exprs (StrMap.StrMap String)
derive instance newtypeExprs :: Newtype Exprs _
derive instance repGenericExprs :: Generic Exprs _
instance showExprs :: Show Exprs where
  show = genericShow
instance decodeExprs :: Decode Exprs where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExprs :: Encode Exprs where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Facet = Facet String
derive instance newtypeFacet :: Newtype Facet _
derive instance repGenericFacet :: Generic Facet _
instance showFacet :: Show Facet where
  show = genericShow
instance decodeFacet :: Decode Facet where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFacet :: Encode Facet where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Facets = Facets (StrMap.StrMap BucketInfo)
derive instance newtypeFacets :: Newtype Facets _
derive instance repGenericFacets :: Generic Facets _
instance showFacets :: Show Facets where
  show = genericShow
instance decodeFacets :: Decode Facets where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFacets :: Encode Facets where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The statistics for a field calculated in the request.</p>
newtype FieldStats = FieldStats 
  { "min" :: NullOrUndefined.NullOrUndefined (String)
  , "max" :: NullOrUndefined.NullOrUndefined (String)
  , "count" :: NullOrUndefined.NullOrUndefined (Number)
  , "missing" :: NullOrUndefined.NullOrUndefined (Number)
  , "sum" :: NullOrUndefined.NullOrUndefined (Number)
  , "sumOfSquares" :: NullOrUndefined.NullOrUndefined (Number)
  , "mean" :: NullOrUndefined.NullOrUndefined (String)
  , "stddev" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeFieldStats :: Newtype FieldStats _
derive instance repGenericFieldStats :: Generic FieldStats _
instance showFieldStats :: Show FieldStats where
  show = genericShow
instance decodeFieldStats :: Decode FieldStats where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFieldStats :: Encode FieldStats where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs FieldStats from required parameters
newFieldStats :: FieldStats
newFieldStats  = FieldStats { "count": (NullOrUndefined Nothing), "max": (NullOrUndefined Nothing), "mean": (NullOrUndefined Nothing), "min": (NullOrUndefined Nothing), "missing": (NullOrUndefined Nothing), "stddev": (NullOrUndefined Nothing), "sum": (NullOrUndefined Nothing), "sumOfSquares": (NullOrUndefined Nothing) }

-- | Constructs FieldStats's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFieldStats' :: ( { "min" :: NullOrUndefined.NullOrUndefined (String) , "max" :: NullOrUndefined.NullOrUndefined (String) , "count" :: NullOrUndefined.NullOrUndefined (Number) , "missing" :: NullOrUndefined.NullOrUndefined (Number) , "sum" :: NullOrUndefined.NullOrUndefined (Number) , "sumOfSquares" :: NullOrUndefined.NullOrUndefined (Number) , "mean" :: NullOrUndefined.NullOrUndefined (String) , "stddev" :: NullOrUndefined.NullOrUndefined (Number) } -> {"min" :: NullOrUndefined.NullOrUndefined (String) , "max" :: NullOrUndefined.NullOrUndefined (String) , "count" :: NullOrUndefined.NullOrUndefined (Number) , "missing" :: NullOrUndefined.NullOrUndefined (Number) , "sum" :: NullOrUndefined.NullOrUndefined (Number) , "sumOfSquares" :: NullOrUndefined.NullOrUndefined (Number) , "mean" :: NullOrUndefined.NullOrUndefined (String) , "stddev" :: NullOrUndefined.NullOrUndefined (Number) } ) -> FieldStats
newFieldStats'  customize = (FieldStats <<< customize) { "count": (NullOrUndefined Nothing), "max": (NullOrUndefined Nothing), "mean": (NullOrUndefined Nothing), "min": (NullOrUndefined Nothing), "missing": (NullOrUndefined Nothing), "stddev": (NullOrUndefined Nothing), "sum": (NullOrUndefined Nothing), "sumOfSquares": (NullOrUndefined Nothing) }



newtype FieldValue = FieldValue (Array String)
derive instance newtypeFieldValue :: Newtype FieldValue _
derive instance repGenericFieldValue :: Generic FieldValue _
instance showFieldValue :: Show FieldValue where
  show = genericShow
instance decodeFieldValue :: Decode FieldValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFieldValue :: Encode FieldValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Fields = Fields (StrMap.StrMap FieldValue)
derive instance newtypeFields :: Newtype Fields _
derive instance repGenericFields :: Generic Fields _
instance showFields :: Show Fields where
  show = genericShow
instance decodeFields :: Decode Fields where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFields :: Encode Fields where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FilterQuery = FilterQuery String
derive instance newtypeFilterQuery :: Newtype FilterQuery _
derive instance repGenericFilterQuery :: Generic FilterQuery _
instance showFilterQuery :: Show FilterQuery where
  show = genericShow
instance decodeFilterQuery :: Decode FilterQuery where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFilterQuery :: Encode FilterQuery where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Highlight = Highlight String
derive instance newtypeHighlight :: Newtype Highlight _
derive instance repGenericHighlight :: Generic Highlight _
instance showHighlight :: Show Highlight where
  show = genericShow
instance decodeHighlight :: Decode Highlight where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHighlight :: Encode Highlight where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Highlights = Highlights (StrMap.StrMap String)
derive instance newtypeHighlights :: Newtype Highlights _
derive instance repGenericHighlights :: Generic Highlights _
instance showHighlights :: Show Highlights where
  show = genericShow
instance decodeHighlights :: Decode Highlights where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHighlights :: Encode Highlights where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information about a document that matches the search request.</p>
newtype Hit = Hit 
  { "id" :: NullOrUndefined.NullOrUndefined (String)
  , "fields" :: NullOrUndefined.NullOrUndefined (Fields)
  , "exprs" :: NullOrUndefined.NullOrUndefined (Exprs)
  , "highlights" :: NullOrUndefined.NullOrUndefined (Highlights)
  }
derive instance newtypeHit :: Newtype Hit _
derive instance repGenericHit :: Generic Hit _
instance showHit :: Show Hit where
  show = genericShow
instance decodeHit :: Decode Hit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHit :: Encode Hit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Hit from required parameters
newHit :: Hit
newHit  = Hit { "exprs": (NullOrUndefined Nothing), "fields": (NullOrUndefined Nothing), "highlights": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing) }

-- | Constructs Hit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHit' :: ( { "id" :: NullOrUndefined.NullOrUndefined (String) , "fields" :: NullOrUndefined.NullOrUndefined (Fields) , "exprs" :: NullOrUndefined.NullOrUndefined (Exprs) , "highlights" :: NullOrUndefined.NullOrUndefined (Highlights) } -> {"id" :: NullOrUndefined.NullOrUndefined (String) , "fields" :: NullOrUndefined.NullOrUndefined (Fields) , "exprs" :: NullOrUndefined.NullOrUndefined (Exprs) , "highlights" :: NullOrUndefined.NullOrUndefined (Highlights) } ) -> Hit
newHit'  customize = (Hit <<< customize) { "exprs": (NullOrUndefined Nothing), "fields": (NullOrUndefined Nothing), "highlights": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing) }



newtype HitList = HitList (Array Hit)
derive instance newtypeHitList :: Newtype HitList _
derive instance repGenericHitList :: Generic HitList _
instance showHitList :: Show HitList where
  show = genericShow
instance decodeHitList :: Decode HitList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHitList :: Encode HitList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The collection of documents that match the search request.</p>
newtype Hits = Hits 
  { "found" :: NullOrUndefined.NullOrUndefined (Number)
  , "start" :: NullOrUndefined.NullOrUndefined (Number)
  , "cursor" :: NullOrUndefined.NullOrUndefined (String)
  , "hit" :: NullOrUndefined.NullOrUndefined (HitList)
  }
derive instance newtypeHits :: Newtype Hits _
derive instance repGenericHits :: Generic Hits _
instance showHits :: Show Hits where
  show = genericShow
instance decodeHits :: Decode Hits where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHits :: Encode Hits where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Hits from required parameters
newHits :: Hits
newHits  = Hits { "cursor": (NullOrUndefined Nothing), "found": (NullOrUndefined Nothing), "hit": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing) }

-- | Constructs Hits's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHits' :: ( { "found" :: NullOrUndefined.NullOrUndefined (Number) , "start" :: NullOrUndefined.NullOrUndefined (Number) , "cursor" :: NullOrUndefined.NullOrUndefined (String) , "hit" :: NullOrUndefined.NullOrUndefined (HitList) } -> {"found" :: NullOrUndefined.NullOrUndefined (Number) , "start" :: NullOrUndefined.NullOrUndefined (Number) , "cursor" :: NullOrUndefined.NullOrUndefined (String) , "hit" :: NullOrUndefined.NullOrUndefined (HitList) } ) -> Hits
newHits'  customize = (Hits <<< customize) { "cursor": (NullOrUndefined Nothing), "found": (NullOrUndefined Nothing), "hit": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing) }



newtype Partial'' = Partial'' Boolean
derive instance newtypePartial'' :: Newtype Partial'' _
derive instance repGenericPartial'' :: Generic Partial'' _
instance showPartial'' :: Show Partial'' where
  show = genericShow
instance decodePartial'' :: Decode Partial'' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePartial'' :: Encode Partial'' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Query = Query String
derive instance newtypeQuery :: Newtype Query _
derive instance repGenericQuery :: Generic Query _
instance showQuery :: Show Query where
  show = genericShow
instance decodeQuery :: Decode Query where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQuery :: Encode Query where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QueryOptions = QueryOptions String
derive instance newtypeQueryOptions :: Newtype QueryOptions _
derive instance repGenericQueryOptions :: Generic QueryOptions _
instance showQueryOptions :: Show QueryOptions where
  show = genericShow
instance decodeQueryOptions :: Decode QueryOptions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryOptions :: Encode QueryOptions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QueryParser = QueryParser String
derive instance newtypeQueryParser :: Newtype QueryParser _
derive instance repGenericQueryParser :: Generic QueryParser _
instance showQueryParser :: Show QueryParser where
  show = genericShow
instance decodeQueryParser :: Decode QueryParser where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryParser :: Encode QueryParser where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Return = Return String
derive instance newtypeReturn :: Newtype Return _
derive instance repGenericReturn :: Generic Return _
instance showReturn :: Show Return where
  show = genericShow
instance decodeReturn :: Decode Return where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReturn :: Encode Return where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information about any problems encountered while processing a search request.</p>
newtype SearchException = SearchException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSearchException :: Newtype SearchException _
derive instance repGenericSearchException :: Generic SearchException _
instance showSearchException :: Show SearchException where
  show = genericShow
instance decodeSearchException :: Decode SearchException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSearchException :: Encode SearchException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SearchException from required parameters
newSearchException :: SearchException
newSearchException  = SearchException { "message": (NullOrUndefined Nothing) }

-- | Constructs SearchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> SearchException
newSearchException'  customize = (SearchException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Container for the parameters to the <code>Search</code> request.</p>
newtype SearchRequest = SearchRequest 
  { "cursor" :: NullOrUndefined.NullOrUndefined (Cursor)
  , "expr" :: NullOrUndefined.NullOrUndefined (Expr)
  , "facet" :: NullOrUndefined.NullOrUndefined (Facet)
  , "filterQuery" :: NullOrUndefined.NullOrUndefined (FilterQuery)
  , "highlight" :: NullOrUndefined.NullOrUndefined (Highlight)
  , "partial" :: NullOrUndefined.NullOrUndefined (Partial'')
  , "query" :: (Query)
  , "queryOptions" :: NullOrUndefined.NullOrUndefined (QueryOptions)
  , "queryParser" :: NullOrUndefined.NullOrUndefined (QueryParser)
  , "return" :: NullOrUndefined.NullOrUndefined (Return)
  , "size" :: NullOrUndefined.NullOrUndefined (Size)
  , "sort" :: NullOrUndefined.NullOrUndefined (Sort)
  , "start" :: NullOrUndefined.NullOrUndefined (Start)
  , "stats" :: NullOrUndefined.NullOrUndefined (Stat)
  }
derive instance newtypeSearchRequest :: Newtype SearchRequest _
derive instance repGenericSearchRequest :: Generic SearchRequest _
instance showSearchRequest :: Show SearchRequest where
  show = genericShow
instance decodeSearchRequest :: Decode SearchRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSearchRequest :: Encode SearchRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SearchRequest from required parameters
newSearchRequest :: Query -> SearchRequest
newSearchRequest _query = SearchRequest { "query": _query, "cursor": (NullOrUndefined Nothing), "expr": (NullOrUndefined Nothing), "facet": (NullOrUndefined Nothing), "filterQuery": (NullOrUndefined Nothing), "highlight": (NullOrUndefined Nothing), "partial": (NullOrUndefined Nothing), "queryOptions": (NullOrUndefined Nothing), "queryParser": (NullOrUndefined Nothing), "return": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "sort": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing) }

-- | Constructs SearchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchRequest' :: Query -> ( { "cursor" :: NullOrUndefined.NullOrUndefined (Cursor) , "expr" :: NullOrUndefined.NullOrUndefined (Expr) , "facet" :: NullOrUndefined.NullOrUndefined (Facet) , "filterQuery" :: NullOrUndefined.NullOrUndefined (FilterQuery) , "highlight" :: NullOrUndefined.NullOrUndefined (Highlight) , "partial" :: NullOrUndefined.NullOrUndefined (Partial'') , "query" :: (Query) , "queryOptions" :: NullOrUndefined.NullOrUndefined (QueryOptions) , "queryParser" :: NullOrUndefined.NullOrUndefined (QueryParser) , "return" :: NullOrUndefined.NullOrUndefined (Return) , "size" :: NullOrUndefined.NullOrUndefined (Size) , "sort" :: NullOrUndefined.NullOrUndefined (Sort) , "start" :: NullOrUndefined.NullOrUndefined (Start) , "stats" :: NullOrUndefined.NullOrUndefined (Stat) } -> {"cursor" :: NullOrUndefined.NullOrUndefined (Cursor) , "expr" :: NullOrUndefined.NullOrUndefined (Expr) , "facet" :: NullOrUndefined.NullOrUndefined (Facet) , "filterQuery" :: NullOrUndefined.NullOrUndefined (FilterQuery) , "highlight" :: NullOrUndefined.NullOrUndefined (Highlight) , "partial" :: NullOrUndefined.NullOrUndefined (Partial'') , "query" :: (Query) , "queryOptions" :: NullOrUndefined.NullOrUndefined (QueryOptions) , "queryParser" :: NullOrUndefined.NullOrUndefined (QueryParser) , "return" :: NullOrUndefined.NullOrUndefined (Return) , "size" :: NullOrUndefined.NullOrUndefined (Size) , "sort" :: NullOrUndefined.NullOrUndefined (Sort) , "start" :: NullOrUndefined.NullOrUndefined (Start) , "stats" :: NullOrUndefined.NullOrUndefined (Stat) } ) -> SearchRequest
newSearchRequest' _query customize = (SearchRequest <<< customize) { "query": _query, "cursor": (NullOrUndefined Nothing), "expr": (NullOrUndefined Nothing), "facet": (NullOrUndefined Nothing), "filterQuery": (NullOrUndefined Nothing), "highlight": (NullOrUndefined Nothing), "partial": (NullOrUndefined Nothing), "queryOptions": (NullOrUndefined Nothing), "queryParser": (NullOrUndefined Nothing), "return": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "sort": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing) }



-- | <p>The result of a <code>Search</code> request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.</p>
newtype SearchResponse = SearchResponse 
  { "status" :: NullOrUndefined.NullOrUndefined (SearchStatus)
  , "hits" :: NullOrUndefined.NullOrUndefined (Hits)
  , "facets" :: NullOrUndefined.NullOrUndefined (Facets)
  , "stats" :: NullOrUndefined.NullOrUndefined (Stats)
  }
derive instance newtypeSearchResponse :: Newtype SearchResponse _
derive instance repGenericSearchResponse :: Generic SearchResponse _
instance showSearchResponse :: Show SearchResponse where
  show = genericShow
instance decodeSearchResponse :: Decode SearchResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSearchResponse :: Encode SearchResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SearchResponse from required parameters
newSearchResponse :: SearchResponse
newSearchResponse  = SearchResponse { "facets": (NullOrUndefined Nothing), "hits": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs SearchResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchResponse' :: ( { "status" :: NullOrUndefined.NullOrUndefined (SearchStatus) , "hits" :: NullOrUndefined.NullOrUndefined (Hits) , "facets" :: NullOrUndefined.NullOrUndefined (Facets) , "stats" :: NullOrUndefined.NullOrUndefined (Stats) } -> {"status" :: NullOrUndefined.NullOrUndefined (SearchStatus) , "hits" :: NullOrUndefined.NullOrUndefined (Hits) , "facets" :: NullOrUndefined.NullOrUndefined (Facets) , "stats" :: NullOrUndefined.NullOrUndefined (Stats) } ) -> SearchResponse
newSearchResponse'  customize = (SearchResponse <<< customize) { "facets": (NullOrUndefined Nothing), "hits": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



-- | <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
newtype SearchStatus = SearchStatus 
  { "timems" :: NullOrUndefined.NullOrUndefined (Number)
  , "rid" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSearchStatus :: Newtype SearchStatus _
derive instance repGenericSearchStatus :: Generic SearchStatus _
instance showSearchStatus :: Show SearchStatus where
  show = genericShow
instance decodeSearchStatus :: Decode SearchStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSearchStatus :: Encode SearchStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SearchStatus from required parameters
newSearchStatus :: SearchStatus
newSearchStatus  = SearchStatus { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }

-- | Constructs SearchStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchStatus' :: ( { "timems" :: NullOrUndefined.NullOrUndefined (Number) , "rid" :: NullOrUndefined.NullOrUndefined (String) } -> {"timems" :: NullOrUndefined.NullOrUndefined (Number) , "rid" :: NullOrUndefined.NullOrUndefined (String) } ) -> SearchStatus
newSearchStatus'  customize = (SearchStatus <<< customize) { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }



newtype Size = Size Number
derive instance newtypeSize :: Newtype Size _
derive instance repGenericSize :: Generic Size _
instance showSize :: Show Size where
  show = genericShow
instance decodeSize :: Decode Size where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSize :: Encode Size where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Sort = Sort String
derive instance newtypeSort :: Newtype Sort _
derive instance repGenericSort :: Generic Sort _
instance showSort :: Show Sort where
  show = genericShow
instance decodeSort :: Decode Sort where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSort :: Encode Sort where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Start = Start Number
derive instance newtypeStart :: Newtype Start _
derive instance repGenericStart :: Generic Start _
instance showStart :: Show Start where
  show = genericShow
instance decodeStart :: Decode Start where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStart :: Encode Start where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Stat = Stat String
derive instance newtypeStat :: Newtype Stat _
derive instance repGenericStat :: Generic Stat _
instance showStat :: Show Stat where
  show = genericShow
instance decodeStat :: Decode Stat where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStat :: Encode Stat where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The statistics calculated in the request.</p>
newtype Stats = Stats (StrMap.StrMap FieldStats)
derive instance newtypeStats :: Newtype Stats _
derive instance repGenericStats :: Generic Stats _
instance showStats :: Show Stats where
  show = genericShow
instance decodeStats :: Decode Stats where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStats :: Encode Stats where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Container for the suggestion information returned in a <code>SuggestResponse</code>.</p>
newtype SuggestModel = SuggestModel 
  { "query" :: NullOrUndefined.NullOrUndefined (String)
  , "found" :: NullOrUndefined.NullOrUndefined (Number)
  , "suggestions" :: NullOrUndefined.NullOrUndefined (Suggestions)
  }
derive instance newtypeSuggestModel :: Newtype SuggestModel _
derive instance repGenericSuggestModel :: Generic SuggestModel _
instance showSuggestModel :: Show SuggestModel where
  show = genericShow
instance decodeSuggestModel :: Decode SuggestModel where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggestModel :: Encode SuggestModel where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SuggestModel from required parameters
newSuggestModel :: SuggestModel
newSuggestModel  = SuggestModel { "found": (NullOrUndefined Nothing), "query": (NullOrUndefined Nothing), "suggestions": (NullOrUndefined Nothing) }

-- | Constructs SuggestModel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestModel' :: ( { "query" :: NullOrUndefined.NullOrUndefined (String) , "found" :: NullOrUndefined.NullOrUndefined (Number) , "suggestions" :: NullOrUndefined.NullOrUndefined (Suggestions) } -> {"query" :: NullOrUndefined.NullOrUndefined (String) , "found" :: NullOrUndefined.NullOrUndefined (Number) , "suggestions" :: NullOrUndefined.NullOrUndefined (Suggestions) } ) -> SuggestModel
newSuggestModel'  customize = (SuggestModel <<< customize) { "found": (NullOrUndefined Nothing), "query": (NullOrUndefined Nothing), "suggestions": (NullOrUndefined Nothing) }



-- | <p>Container for the parameters to the <code>Suggest</code> request.</p>
newtype SuggestRequest = SuggestRequest 
  { "query" :: (Query)
  , "suggester" :: (Suggester)
  , "size" :: NullOrUndefined.NullOrUndefined (SuggestionsSize)
  }
derive instance newtypeSuggestRequest :: Newtype SuggestRequest _
derive instance repGenericSuggestRequest :: Generic SuggestRequest _
instance showSuggestRequest :: Show SuggestRequest where
  show = genericShow
instance decodeSuggestRequest :: Decode SuggestRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggestRequest :: Encode SuggestRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SuggestRequest from required parameters
newSuggestRequest :: Query -> Suggester -> SuggestRequest
newSuggestRequest _query _suggester = SuggestRequest { "query": _query, "suggester": _suggester, "size": (NullOrUndefined Nothing) }

-- | Constructs SuggestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestRequest' :: Query -> Suggester -> ( { "query" :: (Query) , "suggester" :: (Suggester) , "size" :: NullOrUndefined.NullOrUndefined (SuggestionsSize) } -> {"query" :: (Query) , "suggester" :: (Suggester) , "size" :: NullOrUndefined.NullOrUndefined (SuggestionsSize) } ) -> SuggestRequest
newSuggestRequest' _query _suggester customize = (SuggestRequest <<< customize) { "query": _query, "suggester": _suggester, "size": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>Suggest</code> request.</p>
newtype SuggestResponse = SuggestResponse 
  { "status" :: NullOrUndefined.NullOrUndefined (SuggestStatus)
  , "suggest" :: NullOrUndefined.NullOrUndefined (SuggestModel)
  }
derive instance newtypeSuggestResponse :: Newtype SuggestResponse _
derive instance repGenericSuggestResponse :: Generic SuggestResponse _
instance showSuggestResponse :: Show SuggestResponse where
  show = genericShow
instance decodeSuggestResponse :: Decode SuggestResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggestResponse :: Encode SuggestResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SuggestResponse from required parameters
newSuggestResponse :: SuggestResponse
newSuggestResponse  = SuggestResponse { "status": (NullOrUndefined Nothing), "suggest": (NullOrUndefined Nothing) }

-- | Constructs SuggestResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestResponse' :: ( { "status" :: NullOrUndefined.NullOrUndefined (SuggestStatus) , "suggest" :: NullOrUndefined.NullOrUndefined (SuggestModel) } -> {"status" :: NullOrUndefined.NullOrUndefined (SuggestStatus) , "suggest" :: NullOrUndefined.NullOrUndefined (SuggestModel) } ) -> SuggestResponse
newSuggestResponse'  customize = (SuggestResponse <<< customize) { "status": (NullOrUndefined Nothing), "suggest": (NullOrUndefined Nothing) }



-- | <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
newtype SuggestStatus = SuggestStatus 
  { "timems" :: NullOrUndefined.NullOrUndefined (Number)
  , "rid" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSuggestStatus :: Newtype SuggestStatus _
derive instance repGenericSuggestStatus :: Generic SuggestStatus _
instance showSuggestStatus :: Show SuggestStatus where
  show = genericShow
instance decodeSuggestStatus :: Decode SuggestStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggestStatus :: Encode SuggestStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SuggestStatus from required parameters
newSuggestStatus :: SuggestStatus
newSuggestStatus  = SuggestStatus { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }

-- | Constructs SuggestStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestStatus' :: ( { "timems" :: NullOrUndefined.NullOrUndefined (Number) , "rid" :: NullOrUndefined.NullOrUndefined (String) } -> {"timems" :: NullOrUndefined.NullOrUndefined (Number) , "rid" :: NullOrUndefined.NullOrUndefined (String) } ) -> SuggestStatus
newSuggestStatus'  customize = (SuggestStatus <<< customize) { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }



newtype Suggester = Suggester String
derive instance newtypeSuggester :: Newtype Suggester _
derive instance repGenericSuggester :: Generic Suggester _
instance showSuggester :: Show Suggester where
  show = genericShow
instance decodeSuggester :: Decode Suggester where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggester :: Encode Suggester where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An autocomplete suggestion that matches the query string specified in a <code>SuggestRequest</code>. </p>
newtype SuggestionMatch = SuggestionMatch 
  { "suggestion" :: NullOrUndefined.NullOrUndefined (String)
  , "score" :: NullOrUndefined.NullOrUndefined (Number)
  , "id" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSuggestionMatch :: Newtype SuggestionMatch _
derive instance repGenericSuggestionMatch :: Generic SuggestionMatch _
instance showSuggestionMatch :: Show SuggestionMatch where
  show = genericShow
instance decodeSuggestionMatch :: Decode SuggestionMatch where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggestionMatch :: Encode SuggestionMatch where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SuggestionMatch from required parameters
newSuggestionMatch :: SuggestionMatch
newSuggestionMatch  = SuggestionMatch { "id": (NullOrUndefined Nothing), "score": (NullOrUndefined Nothing), "suggestion": (NullOrUndefined Nothing) }

-- | Constructs SuggestionMatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestionMatch' :: ( { "suggestion" :: NullOrUndefined.NullOrUndefined (String) , "score" :: NullOrUndefined.NullOrUndefined (Number) , "id" :: NullOrUndefined.NullOrUndefined (String) } -> {"suggestion" :: NullOrUndefined.NullOrUndefined (String) , "score" :: NullOrUndefined.NullOrUndefined (Number) , "id" :: NullOrUndefined.NullOrUndefined (String) } ) -> SuggestionMatch
newSuggestionMatch'  customize = (SuggestionMatch <<< customize) { "id": (NullOrUndefined Nothing), "score": (NullOrUndefined Nothing), "suggestion": (NullOrUndefined Nothing) }



newtype Suggestions = Suggestions (Array SuggestionMatch)
derive instance newtypeSuggestions :: Newtype Suggestions _
derive instance repGenericSuggestions :: Generic Suggestions _
instance showSuggestions :: Show Suggestions where
  show = genericShow
instance decodeSuggestions :: Decode Suggestions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggestions :: Encode Suggestions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SuggestionsSize = SuggestionsSize Number
derive instance newtypeSuggestionsSize :: Newtype SuggestionsSize _
derive instance repGenericSuggestionsSize :: Generic SuggestionsSize _
instance showSuggestionsSize :: Show SuggestionsSize where
  show = genericShow
instance decodeSuggestionsSize :: Decode SuggestionsSize where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSuggestionsSize :: Encode SuggestionsSize where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Container for the parameters to the <code>UploadDocuments</code> request.</p>
newtype UploadDocumentsRequest = UploadDocumentsRequest 
  { "documents" :: (String)
  , "contentType" :: (ContentType)
  }
derive instance newtypeUploadDocumentsRequest :: Newtype UploadDocumentsRequest _
derive instance repGenericUploadDocumentsRequest :: Generic UploadDocumentsRequest _
instance showUploadDocumentsRequest :: Show UploadDocumentsRequest where
  show = genericShow
instance decodeUploadDocumentsRequest :: Decode UploadDocumentsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadDocumentsRequest :: Encode UploadDocumentsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadDocumentsRequest from required parameters
newUploadDocumentsRequest :: ContentType -> String -> UploadDocumentsRequest
newUploadDocumentsRequest _contentType _documents = UploadDocumentsRequest { "contentType": _contentType, "documents": _documents }

-- | Constructs UploadDocumentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadDocumentsRequest' :: ContentType -> String -> ( { "documents" :: (String) , "contentType" :: (ContentType) } -> {"documents" :: (String) , "contentType" :: (ContentType) } ) -> UploadDocumentsRequest
newUploadDocumentsRequest' _contentType _documents customize = (UploadDocumentsRequest <<< customize) { "contentType": _contentType, "documents": _documents }



-- | <p>Contains the response to an <code>UploadDocuments</code> request.</p>
newtype UploadDocumentsResponse = UploadDocumentsResponse 
  { "status" :: NullOrUndefined.NullOrUndefined (String)
  , "adds" :: NullOrUndefined.NullOrUndefined (Adds)
  , "deletes" :: NullOrUndefined.NullOrUndefined (Deletes)
  , "warnings" :: NullOrUndefined.NullOrUndefined (DocumentServiceWarnings)
  }
derive instance newtypeUploadDocumentsResponse :: Newtype UploadDocumentsResponse _
derive instance repGenericUploadDocumentsResponse :: Generic UploadDocumentsResponse _
instance showUploadDocumentsResponse :: Show UploadDocumentsResponse where
  show = genericShow
instance decodeUploadDocumentsResponse :: Decode UploadDocumentsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUploadDocumentsResponse :: Encode UploadDocumentsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UploadDocumentsResponse from required parameters
newUploadDocumentsResponse :: UploadDocumentsResponse
newUploadDocumentsResponse  = UploadDocumentsResponse { "adds": (NullOrUndefined Nothing), "deletes": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "warnings": (NullOrUndefined Nothing) }

-- | Constructs UploadDocumentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadDocumentsResponse' :: ( { "status" :: NullOrUndefined.NullOrUndefined (String) , "adds" :: NullOrUndefined.NullOrUndefined (Adds) , "deletes" :: NullOrUndefined.NullOrUndefined (Deletes) , "warnings" :: NullOrUndefined.NullOrUndefined (DocumentServiceWarnings) } -> {"status" :: NullOrUndefined.NullOrUndefined (String) , "adds" :: NullOrUndefined.NullOrUndefined (Adds) , "deletes" :: NullOrUndefined.NullOrUndefined (Deletes) , "warnings" :: NullOrUndefined.NullOrUndefined (DocumentServiceWarnings) } ) -> UploadDocumentsResponse
newUploadDocumentsResponse'  customize = (UploadDocumentsResponse <<< customize) { "adds": (NullOrUndefined Nothing), "deletes": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "warnings": (NullOrUndefined Nothing) }

