struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_FaceDilate : f32,
  @size(12)
  padding_1 : u32,
  x_EnvMatrix : mat4x4<f32>,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
  @size(12)
  padding_2 : u32,
  x_MainTex_ST : vec4<f32>,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(9) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati5 : i32;

var<private> u_xlati0 : i32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_30.z, x_30.w);
  let x_33 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_39);
  let x_43 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_43 * vec4<f32>(x_44.x, x_44.x, x_44.x, x_44.x)) + x_47);
  let x_51 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_51 * vec4<f32>(x_52.z, x_52.z, x_52.z, x_52.z)) + x_55);
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_58 + x_61);
  let x_64 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_66 : vec4<f32> = in_POSITION0;
  let x_69 : vec4<f32> = u_xlat1;
  let x_71 : vec3<f32> = ((vec3<f32>(x_64.x, x_64.y, x_64.z) * vec3<f32>(x_66.w, x_66.w, x_66.w)) + vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = u_xlat2;
  let x_79 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_75.y, x_75.y, x_75.y, x_75.y) * x_79);
  let x_82 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_83 : vec4<f32> = u_xlat2;
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_82 * vec4<f32>(x_83.x, x_83.x, x_83.x, x_83.x)) + x_86);
  let x_89 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_90 : vec4<f32> = u_xlat2;
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_89 * vec4<f32>(x_90.z, x_90.z, x_90.z, x_90.z)) + x_93);
  let x_102 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_103 : vec4<f32> = u_xlat2;
  let x_106 : vec4<f32> = u_xlat3;
  gl_Position = ((x_102 * vec4<f32>(x_103.w, x_103.w, x_103.w, x_103.w)) + x_106);
  let x_116 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_116 * 0.000244140625f);
  let x_119 : f32 = u_xlat15;
  u_xlat3.x = floor(x_119);
  let x_123 : f32 = u_xlat3.x;
  let x_128 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_123) * 4096.0f) + x_128);
  let x_131 : vec4<f32> = u_xlat3;
  let x_135 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_139 : vec4<f32> = u_xlat3;
  let x_143 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_147 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_149 : vec2<f32> = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_143.x, x_143.y)) + vec2<f32>(x_147.z, x_147.w));
  let x_150 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_150.x, x_150.y, x_149.x, x_149.y);
  let x_154 : vec4<f32> = u_xlat3;
  let x_158 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_162 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.x, x_158.y)) + vec2<f32>(x_162.z, x_162.w));
  let x_166 : vec4<f32> = in_TEXCOORD0;
  let x_170 : vec4<f32> = x_19.x_MainTex_ST;
  let x_174 : vec4<f32> = x_19.x_MainTex_ST;
  let x_176 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(x_170.x, x_170.y)) + vec2<f32>(x_174.z, x_174.w));
  let x_177 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_184 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_184);
  let x_186 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_186);
  let x_192 : f32 = x_19.x_WeightNormal;
  let x_196 : f32 = x_19.x_WeightBold;
  u_xlat16 = (-(x_192) + x_196);
  let x_198 : f32 = u_xlat15;
  let x_199 : f32 = u_xlat16;
  let x_202 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_198 * x_199) + x_202);
  let x_204 : f32 = u_xlat15;
  let x_209 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_204 * 0.25f) + x_209);
  let x_211 : f32 = u_xlat15;
  let x_214 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_211 * x_214);
  let x_217 : f32 = u_xlat15;
  vs_TEXCOORD5.x = (x_217 * 0.5f);
  let x_223 : f32 = u_xlat2.y;
  let x_226 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_223 * x_226);
  let x_229 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_231 : f32 = u_xlat2.x;
  let x_233 : f32 = u_xlat15;
  u_xlat15 = ((x_229 * x_231) + x_233);
  let x_236 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_239 : f32 = u_xlat2.z;
  let x_241 : f32 = u_xlat15;
  u_xlat15 = ((x_236 * x_239) + x_241);
  let x_244 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_246 : f32 = u_xlat2.w;
  let x_248 : f32 = u_xlat15;
  u_xlat15 = ((x_244 * x_246) + x_248);
  let x_251 : vec4<f32> = x_19.x_ScreenParams;
  let x_255 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_257 : vec2<f32> = (vec2<f32>(x_251.y, x_251.y) * vec2<f32>(x_255.x, x_255.y));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_258.z, x_258.w);
  let x_261 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_264 : vec4<f32> = x_19.x_ScreenParams;
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec2<f32> = ((vec2<f32>(x_261.x, x_261.y) * vec2<f32>(x_264.x, x_264.x)) + vec2<f32>(x_267.x, x_267.y));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat2;
  let x_276 : f32 = x_19.x_ScaleX;
  let x_279 : f32 = x_19.x_ScaleY;
  let x_281 : vec2<f32> = (vec2<f32>(x_272.x, x_272.y) * vec2<f32>(x_276, x_279));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_284 : f32 = u_xlat15;
  let x_286 : vec4<f32> = u_xlat2;
  let x_288 : vec2<f32> = (vec2<f32>(x_284, x_284) / vec2<f32>(x_286.x, x_286.y));
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_289.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat2;
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_291.x, x_291.y), vec2<f32>(x_293.x, x_293.y));
  let x_296 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_296);
  let x_299 : f32 = in_TEXCOORD1.y;
  let x_303 : f32 = x_19.x_GradientScale;
  u_xlat16 = (abs(x_299) * x_303);
  let x_305 : f32 = u_xlat15;
  let x_306 : f32 = u_xlat16;
  u_xlat15 = (x_305 * x_306);
  let x_308 : f32 = u_xlat15;
  u_xlat16 = (x_308 * 1.5f);
  let x_313 : f32 = x_19.x_PerspectiveFilter;
  u_xlat2.x = (-(x_313) + 1.0f);
  let x_317 : f32 = u_xlat16;
  let x_319 : f32 = u_xlat2.x;
  u_xlat16 = (x_317 * x_319);
  let x_321 : f32 = u_xlat15;
  let x_323 : f32 = u_xlat16;
  u_xlat15 = ((x_321 * 1.5f) + -(x_323));
  let x_328 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_332 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_334 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_341 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_341.x, x_341.x, x_341.x)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_350 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_353 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_353.z, x_353.z, x_353.z)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat2;
  let x_364 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_366 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : f32 = in_POSITION0.z;
  u_xlat0.z = x_370;
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = (-(vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_382 : vec3<f32> = in_NORMAL0;
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_382, vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_390 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_390)));
  let x_397 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_397 < 0.0f)));
  let x_401 : i32 = u_xlati5;
  let x_403 : i32 = u_xlati0;
  u_xlati0 = (-(x_401) + x_403);
  let x_405 : i32 = u_xlati0;
  u_xlat0.x = f32(x_405);
  let x_408 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = in_NORMAL0;
  let x_411 : vec3<f32> = (vec3<f32>(x_408.x, x_408.x, x_408.x) * x_410);
  let x_412 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_421 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_428 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_435 : vec4<f32> = u_xlat2;
  let x_437 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_435.x, x_435.y, x_435.z), vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_442 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_442);
  let x_445 : vec4<f32> = u_xlat0;
  let x_447 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_445.x, x_445.x, x_445.x, x_445.x) * vec4<f32>(x_447.x, x_447.y, x_447.z, x_447.z));
  let x_450 : vec4<f32> = u_xlat1;
  let x_454 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(vec3<f32>(x_450.x, x_450.y, x_450.z)) + x_454);
  let x_456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_465 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_465);
  let x_468 : vec4<f32> = u_xlat0;
  let x_470 : vec4<f32> = u_xlat3;
  let x_472 : vec3<f32> = (vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(x_470.x, x_470.x, x_470.x));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat2;
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_475.x, x_475.y, x_475.w), vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_482 : f32 = u_xlat3.x;
  let x_484 : f32 = u_xlat15;
  let x_486 : f32 = u_xlat16;
  vs_TEXCOORD5.y = ((abs(x_482) * x_484) + x_486);
  let x_491 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_491;
  let x_494 : vec4<f32> = in_TANGENT0;
  let x_497 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_499 : vec3<f32> = (vec3<f32>(x_494.y, x_494.y, x_494.y) * vec3<f32>(x_497.y, x_497.z, x_497.x));
  let x_500 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_503 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_505 : vec4<f32> = in_TANGENT0;
  let x_508 : vec4<f32> = u_xlat3;
  let x_510 : vec3<f32> = ((vec3<f32>(x_503.y, x_503.z, x_503.x) * vec3<f32>(x_505.x, x_505.x, x_505.x)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_514 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_516 : vec4<f32> = in_TANGENT0;
  let x_519 : vec4<f32> = u_xlat3;
  let x_521 : vec3<f32> = ((vec3<f32>(x_514.y, x_514.z, x_514.x) * vec3<f32>(x_516.z, x_516.z, x_516.z)) + vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat3;
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_529);
  let x_531 : f32 = u_xlat15;
  let x_533 : vec4<f32> = u_xlat3;
  let x_535 : vec3<f32> = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_540 : vec4<f32> = u_xlat2;
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_540.w, x_540.x, x_540.y) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat2;
  let x_547 : vec4<f32> = u_xlat3;
  let x_550 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_545.y, x_545.w, x_545.x) * vec3<f32>(x_547.y, x_547.z, x_547.x)) + -(x_550));
  let x_554 : f32 = in_TANGENT0.w;
  let x_557 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat15 = (x_554 * x_557);
  let x_559 : f32 = u_xlat15;
  let x_561 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_559, x_559, x_559) * x_561);
  let x_564 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_564;
  let x_567 : f32 = u_xlat2.x;
  vs_TEXCOORD2.z = x_567;
  let x_570 : f32 = u_xlat3.z;
  vs_TEXCOORD2.x = x_570;
  let x_574 : f32 = u_xlat3.x;
  vs_TEXCOORD3.x = x_574;
  let x_578 : f32 = u_xlat3.y;
  vs_TEXCOORD4.x = x_578;
  let x_581 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_581;
  let x_584 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_584;
  let x_587 : f32 = u_xlat2.y;
  vs_TEXCOORD3.z = x_587;
  let x_590 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_590;
  let x_593 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_593;
  let x_596 : f32 = u_xlat2.w;
  vs_TEXCOORD4.z = x_596;
  let x_600 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_600;
  let x_601 : vec4<f32> = u_xlat0;
  let x_605 : vec4<f32> = x_19.x_EnvMatrix[1i];
  let x_607 : vec3<f32> = (vec3<f32>(x_601.y, x_601.y, x_601.y) * vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_611 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_613 : vec4<f32> = u_xlat0;
  let x_616 : vec4<f32> = u_xlat1;
  let x_618 : vec3<f32> = ((vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613.x, x_613.x, x_613.x)) + vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_618.z);
  let x_623 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_625 : vec4<f32> = u_xlat0;
  let x_628 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625.z, x_625.z, x_625.z)) + vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_632 : f32 = u_xlat2.y;
  let x_634 : f32 = u_xlat2.y;
  u_xlat0.x = (x_632 * x_634);
  let x_638 : f32 = u_xlat2.x;
  let x_640 : f32 = u_xlat2.x;
  let x_643 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_638 * x_640) + -(x_643));
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_647.y, x_647.w, x_647.z, x_647.x) * x_649);
  let x_652 : vec4<f32> = x_19.unity_SHBr;
  let x_653 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_652, x_653);
  let x_657 : vec4<f32> = x_19.unity_SHBg;
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_657, x_658);
  let x_663 : vec4<f32> = x_19.unity_SHBb;
  let x_664 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_663, x_664);
  let x_671 : vec4<f32> = x_19.unity_SHC;
  let x_673 : vec4<f32> = u_xlat0;
  let x_676 : vec4<f32> = u_xlat2;
  vs_TEXCOORD7 = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673.x, x_673.x, x_673.x)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD5_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(6)
  vs_COLOR0_1 : vec4<f32>,
  @location(7)
  vs_TEXCOORD7_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(5) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0, vs_TEXCOORD7);
}

