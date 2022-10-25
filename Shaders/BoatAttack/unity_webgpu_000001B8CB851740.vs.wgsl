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
  x_Sharpness : f32,
  @size(8)
  padding_2 : u32,
  x_MainTex_ST : vec4<f32>,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlat16 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlati5 : i32;
  var u_xlati0 : i32;
  var u_xlat4 : vec3<f32>;
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
  let x_307 : f32 = x_19.x_Sharpness;
  u_xlat2.x = (x_307 + 1.0f);
  let x_310 : f32 = u_xlat16;
  let x_312 : f32 = u_xlat2.x;
  u_xlat16 = (x_310 * x_312);
  let x_314 : f32 = u_xlat15;
  let x_315 : f32 = u_xlat16;
  u_xlat2.x = (x_314 * x_315);
  let x_322 : f32 = x_19.x_PerspectiveFilter;
  u_xlat7.x = (-(x_322) + 1.0f);
  let x_327 : f32 = u_xlat7.x;
  let x_329 : f32 = u_xlat2.x;
  u_xlat2.x = (x_327 * x_329);
  let x_332 : f32 = u_xlat15;
  let x_333 : f32 = u_xlat16;
  let x_336 : f32 = u_xlat2.x;
  u_xlat15 = ((x_332 * x_333) + -(x_336));
  let x_341 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_345 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat7 = (vec3<f32>(x_341.y, x_341.y, x_341.y) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_349 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_352 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_355 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_352.x, x_352.x, x_352.x)) + x_355);
  let x_358 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_361 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_364 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_361.z, x_361.z, x_361.z)) + x_364);
  let x_366 : vec3<f32> = u_xlat7;
  let x_368 : vec4<f32> = x_19.unity_WorldToObject[3i];
  u_xlat7 = (x_366 + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_372 : f32 = in_POSITION0.z;
  u_xlat0.z = x_372;
  let x_374 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = u_xlat7;
  let x_378 : vec3<f32> = (-(vec3<f32>(x_374.x, x_374.y, x_374.z)) + x_377);
  let x_379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_383 : vec3<f32> = in_NORMAL0;
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_383, vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_391 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_391)));
  let x_398 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_398 < 0.0f)));
  let x_402 : i32 = u_xlati5;
  let x_404 : i32 = u_xlati0;
  u_xlati0 = (-(x_402) + x_404);
  let x_406 : i32 = u_xlati0;
  u_xlat0.x = f32(x_406);
  let x_409 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = in_NORMAL0;
  let x_412 : vec3<f32> = (vec3<f32>(x_409.x, x_409.x, x_409.x) * x_411);
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.x = dot(vec3<f32>(x_415.x, x_415.y, x_415.z), vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_422 : vec4<f32> = u_xlat0;
  let x_425 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.y = dot(vec3<f32>(x_422.x, x_422.y, x_422.z), vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_429 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.z = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_436 : vec4<f32> = u_xlat3;
  let x_438 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_436.x, x_436.y, x_436.z), vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_443 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_443);
  let x_446 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_446.x, x_446.x, x_446.x, x_446.x) * vec4<f32>(x_448.x, x_448.y, x_448.z, x_448.z));
  let x_451 : vec4<f32> = u_xlat1;
  let x_455 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_456 : vec3<f32> = (-(vec3<f32>(x_451.x, x_451.y, x_451.z)) + x_455);
  let x_457 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat0;
  let x_461 : vec4<f32> = u_xlat0;
  u_xlat16 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_464);
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : f32 = u_xlat16;
  u_xlat7 = (vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_468, x_468, x_468));
  let x_471 : vec4<f32> = u_xlat3;
  let x_473 : vec3<f32> = u_xlat7;
  u_xlat16 = dot(vec3<f32>(x_471.x, x_471.y, x_471.w), x_473);
  let x_475 : f32 = u_xlat16;
  let x_477 : f32 = u_xlat15;
  let x_480 : f32 = u_xlat2.x;
  vs_TEXCOORD5.y = ((abs(x_475) * x_477) + x_480);
  let x_485 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_485;
  let x_488 : vec4<f32> = in_TANGENT0;
  let x_491 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_493 : vec3<f32> = (vec3<f32>(x_488.y, x_488.y, x_488.y) * vec3<f32>(x_491.y, x_491.z, x_491.x));
  let x_494 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_499 : vec4<f32> = in_TANGENT0;
  let x_502 : vec4<f32> = u_xlat2;
  let x_504 : vec3<f32> = ((vec3<f32>(x_497.y, x_497.z, x_497.x) * vec3<f32>(x_499.x, x_499.x, x_499.x)) + vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_508 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_510 : vec4<f32> = in_TANGENT0;
  let x_513 : vec4<f32> = u_xlat2;
  let x_515 : vec3<f32> = ((vec3<f32>(x_508.y, x_508.z, x_508.x) * vec3<f32>(x_510.z, x_510.z, x_510.z)) + vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat2;
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_523);
  let x_525 : f32 = u_xlat15;
  let x_527 : vec4<f32> = u_xlat2;
  let x_529 : vec3<f32> = (vec3<f32>(x_525, x_525, x_525) * vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_533 : vec4<f32> = u_xlat2;
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_535.w, x_535.x, x_535.y));
  let x_538 : vec4<f32> = u_xlat3;
  let x_540 : vec4<f32> = u_xlat2;
  let x_543 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_538.y, x_538.w, x_538.x) * vec3<f32>(x_540.y, x_540.z, x_540.x)) + -(x_543));
  let x_547 : f32 = in_TANGENT0.w;
  let x_550 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat15 = (x_547 * x_550);
  let x_552 : f32 = u_xlat15;
  let x_554 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_552, x_552, x_552) * x_554);
  let x_557 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_557;
  let x_560 : f32 = u_xlat3.x;
  vs_TEXCOORD2.z = x_560;
  let x_563 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_563;
  let x_567 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_567;
  let x_571 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_571;
  let x_574 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_574;
  let x_577 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_577;
  let x_580 : f32 = u_xlat3.y;
  vs_TEXCOORD3.z = x_580;
  let x_583 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_583;
  let x_586 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_586;
  let x_589 : f32 = u_xlat3.w;
  vs_TEXCOORD4.z = x_589;
  let x_593 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_593;
  let x_594 : vec4<f32> = u_xlat0;
  let x_598 : vec4<f32> = x_19.x_EnvMatrix[1i];
  let x_600 : vec3<f32> = (vec3<f32>(x_594.y, x_594.y, x_594.y) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_604 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_606 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = u_xlat1;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_606.x, x_606.x, x_606.x)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_611.z);
  let x_617 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_619 : vec4<f32> = u_xlat0;
  let x_622 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_617.x, x_617.y, x_617.z) * vec3<f32>(x_619.z, x_619.z, x_619.z)) + vec3<f32>(x_622.x, x_622.y, x_622.w));
  let x_626 : f32 = u_xlat3.y;
  let x_628 : f32 = u_xlat3.y;
  u_xlat0.x = (x_626 * x_628);
  let x_632 : f32 = u_xlat3.x;
  let x_634 : f32 = u_xlat3.x;
  let x_637 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_632 * x_634) + -(x_637));
  let x_641 : vec4<f32> = u_xlat3;
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_641.y, x_641.w, x_641.z, x_641.x) * x_643);
  let x_646 : vec4<f32> = x_19.unity_SHBr;
  let x_647 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_646, x_647);
  let x_651 : vec4<f32> = x_19.unity_SHBg;
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_651, x_652);
  let x_657 : vec4<f32> = x_19.unity_SHBb;
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_657, x_658);
  let x_664 : vec4<f32> = x_19.unity_SHC;
  let x_666 : vec4<f32> = u_xlat0;
  let x_669 : vec4<f32> = u_xlat2;
  vs_TEXCOORD7 = ((vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_666.x, x_666.x, x_666.x)) + vec3<f32>(x_669.x, x_669.y, x_669.z));
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
  vs_TEXCOORD6_1 : vec3<f32>,
  @location(8)
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0, vs_TEXCOORD6, vs_TEXCOORD7);
}

