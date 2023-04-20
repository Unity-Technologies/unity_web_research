diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ScreenParams : vec4<f32>,
  /* @offset(32) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(96) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(160) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(176) */
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(240) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(304) */
  x_FaceDilate : f32,
  /* @offset(320) */
  x_EnvMatrix : mat4x4<f32>,
  /* @offset(384) */
  x_WeightNormal : f32,
  /* @offset(388) */
  x_WeightBold : f32,
  /* @offset(392) */
  x_ScaleRatioA : f32,
  /* @offset(396) */
  x_VertexOffsetX : f32,
  /* @offset(400) */
  x_VertexOffsetY : f32,
  /* @offset(404) */
  x_GradientScale : f32,
  /* @offset(408) */
  x_ScaleX : f32,
  /* @offset(412) */
  x_ScaleY : f32,
  /* @offset(416) */
  x_PerspectiveFilter : f32,
  /* @offset(420) */
  x_Sharpness : f32,
  /* @offset(432) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(448) */
  x_FaceTex_ST : vec4<f32>,
  /* @offset(464) */
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati4 : i32;

var<private> u_xlati0 : i32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> u_xlatb12 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_34 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_34.y, x_34.y, x_34.y, x_34.y) * x_40);
  let x_44 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_45 : vec3<f32> = u_xlat0;
  let x_48 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_44 * vec4<f32>(x_45.x, x_45.x, x_45.x, x_45.x)) + x_48);
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
  u_xlat12 = (x_116 * 0.000244140625f);
  let x_119 : f32 = u_xlat12;
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
  let x_180 : f32 = u_xlat2.y;
  let x_183 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat12 = (x_180 * x_183);
  let x_186 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_188 : f32 = u_xlat2.x;
  let x_190 : f32 = u_xlat12;
  u_xlat12 = ((x_186 * x_188) + x_190);
  let x_193 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_196 : f32 = u_xlat2.z;
  let x_198 : f32 = u_xlat12;
  u_xlat12 = ((x_193 * x_196) + x_198);
  let x_201 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_203 : f32 = u_xlat2.w;
  let x_205 : f32 = u_xlat12;
  u_xlat12 = ((x_201 * x_203) + x_205);
  let x_208 : vec4<f32> = x_19.x_ScreenParams;
  let x_212 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_214 : vec2<f32> = (vec2<f32>(x_208.y, x_208.y) * vec2<f32>(x_212.x, x_212.y));
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_218 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_221 : vec4<f32> = x_19.x_ScreenParams;
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec2<f32> = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_221.x, x_221.x)) + vec2<f32>(x_224.x, x_224.y));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat2;
  let x_233 : f32 = x_19.x_ScaleX;
  let x_236 : f32 = x_19.x_ScaleY;
  let x_238 : vec2<f32> = (vec2<f32>(x_229.x, x_229.y) * vec2<f32>(x_233, x_236));
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
  let x_241 : f32 = u_xlat12;
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec2<f32> = (vec2<f32>(x_241, x_241) / vec2<f32>(x_243.x, x_243.y));
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec2<f32>(x_248.x, x_248.y), vec2<f32>(x_250.x, x_250.y));
  let x_253 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_253);
  let x_257 : f32 = in_TEXCOORD1.y;
  let x_261 : f32 = x_19.x_GradientScale;
  u_xlat13 = (abs(x_257) * x_261);
  let x_265 : f32 = x_19.x_Sharpness;
  u_xlat2.x = (x_265 + 1.0f);
  let x_269 : f32 = u_xlat13;
  let x_271 : f32 = u_xlat2.x;
  u_xlat13 = (x_269 * x_271);
  let x_273 : f32 = u_xlat12;
  let x_274 : f32 = u_xlat13;
  u_xlat2.x = (x_273 * x_274);
  let x_280 : f32 = x_19.x_PerspectiveFilter;
  u_xlat6.x = (-(x_280) + 1.0f);
  let x_285 : f32 = u_xlat6.x;
  let x_287 : f32 = u_xlat2.x;
  u_xlat2.x = (x_285 * x_287);
  let x_290 : f32 = u_xlat12;
  let x_291 : f32 = u_xlat13;
  let x_294 : f32 = u_xlat2.x;
  u_xlat12 = ((x_290 * x_291) + -(x_294));
  let x_299 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_302 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat6 = (vec3<f32>(x_299.y, x_299.y, x_299.y) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_306 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_309 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_312 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + x_312);
  let x_315 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_318 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_321 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_318.z, x_318.z, x_318.z)) + x_321);
  let x_323 : vec3<f32> = u_xlat6;
  let x_325 : vec4<f32> = x_19.unity_WorldToObject[3i];
  u_xlat6 = (x_323 + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : f32 = in_POSITION0.z;
  u_xlat0.z = x_329;
  let x_331 : vec3<f32> = u_xlat0;
  let x_333 : vec3<f32> = u_xlat6;
  u_xlat0 = (-(x_331) + x_333);
  let x_337 : vec3<f32> = in_NORMAL0;
  let x_338 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_337, x_338);
  let x_345 : f32 = u_xlat0.x;
  u_xlati4 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_345)));
  let x_353 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_353 < 0.0f)));
  let x_357 : i32 = u_xlati4;
  let x_359 : i32 = u_xlati0;
  u_xlati0 = (-(x_357) + x_359);
  let x_361 : i32 = u_xlati0;
  u_xlat0.x = f32(x_361);
  let x_364 : vec3<f32> = u_xlat0;
  let x_366 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec3<f32>(x_364.x, x_364.x, x_364.x) * x_366);
  let x_368 : vec3<f32> = u_xlat0;
  let x_370 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_368, vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_374 : vec3<f32> = u_xlat0;
  let x_376 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_374, vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_380 : vec3<f32> = u_xlat0;
  let x_382 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_380, vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_393 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_393);
  let x_396 : vec3<f32> = u_xlat0;
  let x_398 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_396.x, x_396.x, x_396.x) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  u_xlat6 = (-(vec3<f32>(x_401.x, x_401.y, x_401.z)) + x_405);
  let x_409 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_409.x, x_409.y, x_409.z);
  let x_411 : vec3<f32> = u_xlat6;
  let x_412 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_411, x_412);
  let x_416 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_416);
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec3<f32> = u_xlat6;
  let x_422 : vec3<f32> = (vec3<f32>(x_419.x, x_419.x, x_419.x) * x_421);
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec3<f32> = u_xlat0;
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_425.y, x_425.z, x_425.x), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_433 : f32 = u_xlat1.x;
  let x_435 : f32 = u_xlat12;
  let x_438 : f32 = u_xlat2.x;
  vs_TEXCOORD6.y = ((abs(x_433) * x_435) + x_438);
  let x_445 : f32 = in_TEXCOORD1.y;
  u_xlatb12 = (0.0f >= x_445);
  let x_447 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_447);
  let x_451 : f32 = x_19.x_WeightNormal;
  let x_455 : f32 = x_19.x_WeightBold;
  u_xlat1.x = (-(x_451) + x_455);
  let x_458 : f32 = u_xlat12;
  let x_460 : f32 = u_xlat1.x;
  let x_463 : f32 = x_19.x_WeightNormal;
  u_xlat12 = ((x_458 * x_460) + x_463);
  let x_465 : f32 = u_xlat12;
  let x_470 : f32 = x_19.x_FaceDilate;
  u_xlat12 = ((x_465 * 0.25f) + x_470);
  let x_472 : f32 = u_xlat12;
  let x_475 : f32 = x_19.x_ScaleRatioA;
  u_xlat12 = (x_472 * x_475);
  let x_477 : f32 = u_xlat12;
  vs_TEXCOORD6.x = (x_477 * 0.5f);
  let x_483 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_483;
  let x_486 : vec4<f32> = in_TANGENT0;
  let x_489 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_491 : vec3<f32> = (vec3<f32>(x_486.y, x_486.y, x_486.y) * vec3<f32>(x_489.y, x_489.z, x_489.x));
  let x_492 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_497 : vec4<f32> = in_TANGENT0;
  let x_500 : vec4<f32> = u_xlat1;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.y, x_495.z, x_495.x) * vec3<f32>(x_497.x, x_497.x, x_497.x)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_508 : vec4<f32> = in_TANGENT0;
  let x_511 : vec4<f32> = u_xlat1;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.y, x_506.z, x_506.x) * vec3<f32>(x_508.z, x_508.z, x_508.z)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_516.x, x_516.y, x_516.z), vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_521);
  let x_523 : f32 = u_xlat12;
  let x_525 : vec4<f32> = u_xlat1;
  let x_527 : vec3<f32> = (vec3<f32>(x_523, x_523, x_523) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec3<f32> = u_xlat0;
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec3<f32> = (x_530 * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec3<f32> = u_xlat0;
  let x_538 : vec4<f32> = u_xlat1;
  let x_541 : vec4<f32> = u_xlat3;
  let x_544 : vec3<f32> = ((vec3<f32>(x_536.z, x_536.x, x_536.y) * vec3<f32>(x_538.y, x_538.z, x_538.x)) + -(vec3<f32>(x_541.x, x_541.y, x_541.z)));
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_549 : f32 = in_TANGENT0.w;
  let x_552 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat4 = (x_549 * x_552);
  let x_554 : f32 = u_xlat4;
  let x_556 : vec4<f32> = u_xlat3;
  let x_558 : vec3<f32> = (vec3<f32>(x_554, x_554, x_554) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat3.x;
  vs_TEXCOORD2.y = x_562;
  let x_565 : f32 = u_xlat1.z;
  vs_TEXCOORD2.x = x_565;
  let x_569 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_569;
  let x_573 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_573;
  let x_576 : f32 = u_xlat1.x;
  vs_TEXCOORD3.x = x_576;
  let x_579 : f32 = u_xlat1.y;
  vs_TEXCOORD4.x = x_579;
  let x_582 : f32 = u_xlat3.y;
  vs_TEXCOORD3.y = x_582;
  let x_585 : f32 = u_xlat3.z;
  vs_TEXCOORD4.y = x_585;
  let x_589 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_589;
  let x_590 : vec3<f32> = u_xlat6;
  let x_594 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_590.y, x_590.y, x_590.y) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_598 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_600 : vec3<f32> = u_xlat6;
  let x_603 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(x_600.x, x_600.x, x_600.x)) + x_603);
  let x_607 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_609 : vec3<f32> = u_xlat6;
  let x_612 : vec3<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_607.x, x_607.y, x_607.z) * vec3<f32>(x_609.z, x_609.z, x_609.z)) + x_612);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD6_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(7)
  vs_COLOR0_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}


