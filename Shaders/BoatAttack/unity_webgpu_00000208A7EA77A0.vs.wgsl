struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
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

var<private> vs_TEXCOORD9 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlati5 : i32;
  var u_xlati0 : i32;
  var u_xlatb15 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : f32;
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
  let x_64 : vec4<f32> = u_xlat2;
  let x_68 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_64.y, x_64.y, x_64.y, x_64.y) * x_68);
  let x_71 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_72 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_71 * vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x)) + x_75);
  let x_78 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_79 : vec4<f32> = u_xlat2;
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_78 * vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z)) + x_82);
  let x_85 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_86 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_85 * vec4<f32>(x_86.w, x_86.w, x_86.w, x_86.w)) + x_89);
  let x_97 : vec4<f32> = u_xlat3;
  gl_Position = x_97;
  let x_105 : f32 = u_xlat3.z;
  vs_TEXCOORD9 = x_105;
  let x_111 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_111 * 0.000244140625f);
  let x_114 : f32 = u_xlat15;
  u_xlat3.x = floor(x_114);
  let x_118 : f32 = u_xlat3.x;
  let x_123 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_118) * 4096.0f) + x_123);
  let x_126 : vec4<f32> = u_xlat3;
  let x_130 : vec2<f32> = (vec2<f32>(x_126.x, x_126.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_134 : vec4<f32> = u_xlat3;
  let x_138 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_142 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_144 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(x_138.x, x_138.y)) + vec2<f32>(x_142.z, x_142.w));
  let x_145 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_145.x, x_145.y, x_144.x, x_144.y);
  let x_149 : vec4<f32> = u_xlat3;
  let x_153 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_157 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_149.x, x_149.y) * vec2<f32>(x_153.x, x_153.y)) + vec2<f32>(x_157.z, x_157.w));
  let x_161 : vec4<f32> = in_TEXCOORD0;
  let x_165 : vec4<f32> = x_19.x_MainTex_ST;
  let x_169 : vec4<f32> = x_19.x_MainTex_ST;
  let x_171 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_165.x, x_165.y)) + vec2<f32>(x_169.z, x_169.w));
  let x_172 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
  let x_175 : f32 = u_xlat2.y;
  let x_178 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_175 * x_178);
  let x_181 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_183 : f32 = u_xlat2.x;
  let x_185 : f32 = u_xlat15;
  u_xlat15 = ((x_181 * x_183) + x_185);
  let x_188 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_190 : f32 = u_xlat2.z;
  let x_192 : f32 = u_xlat15;
  u_xlat15 = ((x_188 * x_190) + x_192);
  let x_195 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_197 : f32 = u_xlat2.w;
  let x_199 : f32 = u_xlat15;
  u_xlat15 = ((x_195 * x_197) + x_199);
  let x_202 : vec4<f32> = x_19.x_ScreenParams;
  let x_206 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_208 : vec2<f32> = (vec2<f32>(x_202.y, x_202.y) * vec2<f32>(x_206.x, x_206.y));
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_209.w);
  let x_212 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_215 : vec4<f32> = x_19.x_ScreenParams;
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec2<f32> = ((vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_215.x, x_215.x)) + vec2<f32>(x_218.x, x_218.y));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat2;
  let x_227 : f32 = x_19.x_ScaleX;
  let x_230 : f32 = x_19.x_ScaleY;
  let x_232 : vec2<f32> = (vec2<f32>(x_223.x, x_223.y) * vec2<f32>(x_227, x_230));
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_232.x, x_232.y, x_233.z, x_233.w);
  let x_235 : f32 = u_xlat15;
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : vec2<f32> = (vec2<f32>(x_235, x_235) / vec2<f32>(x_237.x, x_237.y));
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_239.x, x_239.y, x_240.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat2;
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_242.x, x_242.y), vec2<f32>(x_244.x, x_244.y));
  let x_247 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_247);
  let x_250 : f32 = in_TEXCOORD1.y;
  let x_254 : f32 = x_19.x_GradientScale;
  u_xlat2.x = (abs(x_250) * x_254);
  let x_260 : f32 = x_19.x_Sharpness;
  u_xlat7 = (x_260 + 1.0f);
  let x_263 : f32 = u_xlat7;
  let x_265 : f32 = u_xlat2.x;
  u_xlat2.x = (x_263 * x_265);
  let x_268 : f32 = u_xlat15;
  let x_270 : f32 = u_xlat2.x;
  u_xlat7 = (x_268 * x_270);
  let x_275 : f32 = x_19.x_PerspectiveFilter;
  u_xlat12 = (-(x_275) + 1.0f);
  let x_278 : f32 = u_xlat12;
  let x_279 : f32 = u_xlat7;
  u_xlat7 = (x_278 * x_279);
  let x_281 : f32 = u_xlat15;
  let x_283 : f32 = u_xlat2.x;
  let x_285 : f32 = u_xlat7;
  u_xlat15 = ((x_281 * x_283) + -(x_285));
  let x_290 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_293 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_295 : vec3<f32> = (vec3<f32>(x_290.y, x_290.y, x_290.y) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_295.x, x_296.y, x_295.y, x_295.z);
  let x_299 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_302 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_305 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_302.x, x_302.x, x_302.x)) + vec3<f32>(x_305.x, x_305.z, x_305.w));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_308.y, x_307.y, x_307.z);
  let x_311 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_314 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_317 : vec4<f32> = u_xlat2;
  let x_319 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_314.z, x_314.z, x_314.z)) + vec3<f32>(x_317.x, x_317.z, x_317.w));
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_319.x, x_320.y, x_319.y, x_319.z);
  let x_322 : vec4<f32> = u_xlat2;
  let x_325 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.z, x_322.w) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_328.y, x_327.y, x_327.z);
  let x_331 : f32 = in_POSITION0.z;
  u_xlat0.z = x_331;
  let x_333 : vec3<f32> = u_xlat0;
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat0 = (-(x_333) + vec3<f32>(x_335.x, x_335.z, x_335.w));
  let x_340 : vec3<f32> = in_NORMAL0;
  let x_341 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_340, x_341);
  let x_348 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_348)));
  let x_356 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_356 < 0.0f)));
  let x_360 : i32 = u_xlati5;
  let x_362 : i32 = u_xlati0;
  u_xlati0 = (-(x_360) + x_362);
  let x_364 : i32 = u_xlati0;
  u_xlat0.x = f32(x_364);
  let x_367 : vec3<f32> = u_xlat0;
  let x_369 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec3<f32>(x_367.x, x_367.x, x_367.x) * x_369);
  let x_371 : vec3<f32> = u_xlat0;
  let x_373 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_371, vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_377 : vec3<f32> = u_xlat0;
  let x_379 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_377, vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_383 : vec3<f32> = u_xlat0;
  let x_385 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_383, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_389 : vec4<f32> = u_xlat3;
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_396 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_396);
  let x_399 : vec3<f32> = u_xlat0;
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_405 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_407 : vec4<f32> = in_POSITION0;
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407.w, x_407.w, x_407.w)) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_412.x, x_413.y, x_412.y, x_412.z);
  let x_416 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_417 : vec4<f32> = in_POSITION0;
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_416 * vec4<f32>(x_417.w, x_417.w, x_417.w, x_417.w)) + x_420);
  let x_422 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_427 : vec3<f32> = (-(vec3<f32>(x_422.x, x_422.z, x_422.w)) + x_426);
  let x_428 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_432 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = vec3<f32>(x_432.x, x_432.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat3;
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_441);
  let x_444 : vec4<f32> = u_xlat2;
  let x_446 : vec4<f32> = u_xlat3;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.x, x_444.x, x_444.x) * vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_448.x, x_449.y, x_448.y, x_448.z);
  let x_451 : vec3<f32> = u_xlat0;
  let x_453 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_451.y, x_451.z, x_451.x), vec3<f32>(x_453.x, x_453.z, x_453.w));
  let x_459 : f32 = u_xlat2.x;
  let x_461 : f32 = u_xlat15;
  let x_463 : f32 = u_xlat7;
  vs_TEXCOORD6.y = ((abs(x_459) * x_461) + x_463);
  let x_469 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_469);
  let x_471 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_471);
  let x_475 : f32 = x_19.x_WeightNormal;
  let x_479 : f32 = x_19.x_WeightBold;
  u_xlat2.x = (-(x_475) + x_479);
  let x_482 : f32 = u_xlat15;
  let x_484 : f32 = u_xlat2.x;
  let x_487 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_482 * x_484) + x_487);
  let x_489 : f32 = u_xlat15;
  let x_494 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_489 * 0.25f) + x_494);
  let x_496 : f32 = u_xlat15;
  let x_499 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_496 * x_499);
  let x_501 : f32 = u_xlat15;
  vs_TEXCOORD6.x = (x_501 * 0.5f);
  let x_507 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_507;
  let x_510 : vec4<f32> = in_TANGENT0;
  let x_513 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_515 : vec3<f32> = (vec3<f32>(x_510.y, x_510.y, x_510.y) * vec3<f32>(x_513.y, x_513.z, x_513.x));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_519 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_521 : vec4<f32> = in_TANGENT0;
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec3<f32> = ((vec3<f32>(x_519.y, x_519.z, x_519.x) * vec3<f32>(x_521.x, x_521.x, x_521.x)) + vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_530 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_532 : vec4<f32> = in_TANGENT0;
  let x_535 : vec4<f32> = u_xlat2;
  let x_537 : vec3<f32> = ((vec3<f32>(x_530.y, x_530.z, x_530.x) * vec3<f32>(x_532.z, x_532.z, x_532.z)) + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat2;
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_545);
  let x_547 : f32 = u_xlat15;
  let x_549 : vec4<f32> = u_xlat2;
  let x_551 : vec3<f32> = (vec3<f32>(x_547, x_547, x_547) * vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_555 : vec3<f32> = u_xlat0;
  let x_556 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_555 * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec3<f32> = u_xlat0;
  let x_561 : vec4<f32> = u_xlat2;
  let x_564 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_559.z, x_559.x, x_559.y) * vec3<f32>(x_561.y, x_561.z, x_561.x)) + -(x_564));
  let x_569 : f32 = in_TANGENT0.w;
  let x_572 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat5 = (x_569 * x_572);
  let x_574 : f32 = u_xlat5;
  let x_576 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_579 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_579;
  let x_582 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_582;
  let x_586 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_586;
  let x_590 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_590;
  let x_593 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_593;
  let x_596 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_596;
  let x_599 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_599;
  let x_602 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_602;
  let x_606 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_606;
  let x_607 : vec4<f32> = u_xlat3;
  let x_611 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_607.y, x_607.y, x_607.y) * vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_615 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_617 : vec4<f32> = u_xlat3;
  let x_620 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(x_617.x, x_617.x, x_617.x)) + x_620);
  let x_625 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_627 : vec4<f32> = u_xlat3;
  let x_630 : vec3<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_625.x, x_625.y, x_625.z) * vec3<f32>(x_627.z, x_627.z, x_627.z)) + x_630);
  let x_632 : vec4<f32> = u_xlat1;
  let x_636 : vec4<f32> = x_19.unity_WorldToLight[1i];
  u_xlat0 = (vec3<f32>(x_632.y, x_632.y, x_632.y) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_640 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_642 : vec4<f32> = u_xlat1;
  let x_645 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(x_642.x, x_642.x, x_642.x)) + x_645);
  let x_648 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_650 : vec4<f32> = u_xlat1;
  let x_653 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_650.z, x_650.z, x_650.z)) + x_653);
  let x_657 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_659 : vec4<f32> = u_xlat1;
  let x_662 : vec3<f32> = u_xlat0;
  vs_TEXCOORD8 = ((vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_659.w, x_659.w, x_659.w)) + x_662);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD9_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(7)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD6_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(8)
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
  return main_out(gl_Position, vs_TEXCOORD9, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}

