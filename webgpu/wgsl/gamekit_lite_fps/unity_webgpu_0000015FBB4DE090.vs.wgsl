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
  @size(12)
  padding_2 : u32,
  x_MainTex_ST : vec4<f32>,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati5 : i32;

var<private> u_xlati0 : i32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> u_xlatb15 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

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
  let x_50 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_50 * vec4<f32>(x_51.z, x_51.z, x_51.z, x_51.z)) + x_54);
  let x_57 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_57 + x_60);
  let x_63 : vec4<f32> = u_xlat2;
  let x_67 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat2;
  let x_81 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_90 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_91 : vec4<f32> = u_xlat2;
  let x_94 : vec4<f32> = u_xlat3;
  gl_Position = ((x_90 * vec4<f32>(x_91.w, x_91.w, x_91.w, x_91.w)) + x_94);
  let x_104 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_104 * 0.000244140625f);
  let x_107 : f32 = u_xlat15;
  u_xlat3.x = floor(x_107);
  let x_111 : f32 = u_xlat3.x;
  let x_116 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_111) * 4096.0f) + x_116);
  let x_119 : vec4<f32> = u_xlat3;
  let x_123 : vec2<f32> = (vec2<f32>(x_119.x, x_119.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat3;
  let x_131 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_135 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_137 : vec2<f32> = ((vec2<f32>(x_127.x, x_127.y) * vec2<f32>(x_131.x, x_131.y)) + vec2<f32>(x_135.z, x_135.w));
  let x_138 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_138.x, x_138.y, x_137.x, x_137.y);
  let x_142 : vec4<f32> = u_xlat3;
  let x_146 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_150 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_146.x, x_146.y)) + vec2<f32>(x_150.z, x_150.w));
  let x_154 : vec4<f32> = in_TEXCOORD0;
  let x_158 : vec4<f32> = x_19.x_MainTex_ST;
  let x_162 : vec4<f32> = x_19.x_MainTex_ST;
  let x_164 : vec2<f32> = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.x, x_158.y)) + vec2<f32>(x_162.z, x_162.w));
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_164.x, x_164.y, x_165.z, x_165.w);
  let x_168 : f32 = u_xlat2.y;
  let x_171 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_168 * x_171);
  let x_174 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_176 : f32 = u_xlat2.x;
  let x_178 : f32 = u_xlat15;
  u_xlat15 = ((x_174 * x_176) + x_178);
  let x_181 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_184 : f32 = u_xlat2.z;
  let x_186 : f32 = u_xlat15;
  u_xlat15 = ((x_181 * x_184) + x_186);
  let x_189 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_191 : f32 = u_xlat2.w;
  let x_193 : f32 = u_xlat15;
  u_xlat15 = ((x_189 * x_191) + x_193);
  let x_196 : vec4<f32> = x_19.x_ScreenParams;
  let x_200 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_202 : vec2<f32> = (vec2<f32>(x_196.y, x_196.y) * vec2<f32>(x_200.x, x_200.y));
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_202.x, x_202.y, x_203.z, x_203.w);
  let x_206 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_209 : vec4<f32> = x_19.x_ScreenParams;
  let x_212 : vec4<f32> = u_xlat2;
  let x_214 : vec2<f32> = ((vec2<f32>(x_206.x, x_206.y) * vec2<f32>(x_209.x, x_209.x)) + vec2<f32>(x_212.x, x_212.y));
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat2;
  let x_221 : f32 = x_19.x_ScaleX;
  let x_224 : f32 = x_19.x_ScaleY;
  let x_226 : vec2<f32> = (vec2<f32>(x_217.x, x_217.y) * vec2<f32>(x_221, x_224));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_229 : f32 = u_xlat15;
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec2<f32> = (vec2<f32>(x_229, x_229) / vec2<f32>(x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_236.x, x_236.y), vec2<f32>(x_238.x, x_238.y));
  let x_241 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_241);
  let x_244 : f32 = in_TEXCOORD1.y;
  let x_248 : f32 = x_19.x_GradientScale;
  u_xlat2.x = (abs(x_244) * x_248);
  let x_251 : f32 = u_xlat15;
  let x_253 : f32 = u_xlat2.x;
  u_xlat15 = (x_251 * x_253);
  let x_255 : f32 = u_xlat15;
  u_xlat2.x = (x_255 * 1.5f);
  let x_263 : f32 = x_19.x_PerspectiveFilter;
  u_xlat7.x = (-(x_263) + 1.0f);
  let x_269 : f32 = u_xlat7.x;
  let x_271 : f32 = u_xlat2.x;
  u_xlat2.x = (x_269 * x_271);
  let x_274 : f32 = u_xlat15;
  let x_277 : f32 = u_xlat2.x;
  u_xlat15 = ((x_274 * 1.5f) + -(x_277));
  let x_282 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_285 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat7 = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_292 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_295 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_292.x, x_292.x, x_292.x)) + x_295);
  let x_298 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_301 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_304 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_301.z, x_301.z, x_301.z)) + x_304);
  let x_306 : vec3<f32> = u_xlat7;
  let x_308 : vec4<f32> = x_19.unity_WorldToObject[3i];
  u_xlat7 = (x_306 + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_312 : f32 = in_POSITION0.z;
  u_xlat0.z = x_312;
  let x_314 : vec4<f32> = u_xlat0;
  let x_317 : vec3<f32> = u_xlat7;
  let x_318 : vec3<f32> = (-(vec3<f32>(x_314.x, x_314.y, x_314.z)) + x_317);
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : vec3<f32> = in_NORMAL0;
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_323, vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_332 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_332)));
  let x_340 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_340 < 0.0f)));
  let x_344 : i32 = u_xlati5;
  let x_346 : i32 = u_xlati0;
  u_xlati0 = (-(x_344) + x_346);
  let x_348 : i32 = u_xlati0;
  u_xlat0.x = f32(x_348);
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = in_NORMAL0;
  let x_354 : vec3<f32> = (vec3<f32>(x_351.x, x_351.x, x_351.x) * x_353);
  let x_355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(vec3<f32>(x_357.x, x_357.y, x_357.z), vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_364 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(vec3<f32>(x_364.x, x_364.y, x_364.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_371 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_378 : vec4<f32> = u_xlat3;
  let x_380 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_385 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_385);
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.x, x_388.x) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_396 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_398 : vec4<f32> = in_POSITION0;
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat7 = ((vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_398.w, x_398.w, x_398.w)) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_405 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_406 : vec4<f32> = in_POSITION0;
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_405 * vec4<f32>(x_406.w, x_406.w, x_406.w, x_406.w)) + x_409);
  let x_411 : vec3<f32> = u_xlat7;
  let x_414 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_415 : vec3<f32> = (-(x_411) + x_414);
  let x_416 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_420 : vec3<f32> = u_xlat7;
  vs_TEXCOORD5 = x_420;
  let x_421 : vec4<f32> = u_xlat3;
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_428);
  let x_431 : vec3<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_431.x, x_431.x, x_431.x) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat0;
  let x_438 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(vec3<f32>(x_436.y, x_436.z, x_436.x), x_438);
  let x_443 : f32 = u_xlat7.x;
  let x_445 : f32 = u_xlat15;
  let x_448 : f32 = u_xlat2.x;
  vs_TEXCOORD6.y = ((abs(x_443) * x_445) + x_448);
  let x_455 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_455);
  let x_457 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_457);
  let x_461 : f32 = x_19.x_WeightNormal;
  let x_465 : f32 = x_19.x_WeightBold;
  u_xlat2.x = (-(x_461) + x_465);
  let x_468 : f32 = u_xlat15;
  let x_470 : f32 = u_xlat2.x;
  let x_473 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_468 * x_470) + x_473);
  let x_475 : f32 = u_xlat15;
  let x_480 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_475 * 0.25f) + x_480);
  let x_482 : f32 = u_xlat15;
  let x_485 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_482 * x_485);
  let x_487 : f32 = u_xlat15;
  vs_TEXCOORD6.x = (x_487 * 0.5f);
  let x_493 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_493;
  let x_496 : vec4<f32> = in_TANGENT0;
  let x_499 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_501 : vec3<f32> = (vec3<f32>(x_496.y, x_496.y, x_496.y) * vec3<f32>(x_499.y, x_499.z, x_499.x));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_507 : vec4<f32> = in_TANGENT0;
  let x_510 : vec4<f32> = u_xlat2;
  let x_512 : vec3<f32> = ((vec3<f32>(x_505.y, x_505.z, x_505.x) * vec3<f32>(x_507.x, x_507.x, x_507.x)) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_518 : vec4<f32> = in_TANGENT0;
  let x_521 : vec4<f32> = u_xlat2;
  let x_523 : vec3<f32> = ((vec3<f32>(x_516.y, x_516.z, x_516.x) * vec3<f32>(x_518.z, x_518.z, x_518.z)) + vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat2;
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_526.x, x_526.y, x_526.z), vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_531);
  let x_533 : f32 = u_xlat15;
  let x_535 : vec4<f32> = u_xlat2;
  let x_537 : vec3<f32> = (vec3<f32>(x_533, x_533, x_533) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_541 : vec4<f32> = u_xlat0;
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat0;
  let x_548 : vec4<f32> = u_xlat2;
  let x_551 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_546.z, x_546.x, x_546.y) * vec3<f32>(x_548.y, x_548.z, x_548.x)) + -(x_551));
  let x_556 : f32 = in_TANGENT0.w;
  let x_559 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat5 = (x_556 * x_559);
  let x_561 : f32 = u_xlat5;
  let x_563 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_561, x_561, x_561) * x_563);
  let x_566 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_566;
  let x_569 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_569;
  let x_573 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_573;
  let x_577 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_577;
  let x_580 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_580;
  let x_583 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_583;
  let x_586 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_586;
  let x_589 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_589;
  let x_593 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_593;
  let x_594 : vec4<f32> = u_xlat3;
  let x_598 : vec4<f32> = x_19.x_EnvMatrix[1i];
  let x_600 : vec3<f32> = (vec3<f32>(x_594.y, x_594.y, x_594.y) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_604 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_606 : vec4<f32> = u_xlat3;
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_606.x, x_606.x, x_606.x)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_616 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_618 : vec4<f32> = u_xlat3;
  let x_621 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_616.x, x_616.y, x_616.z) * vec3<f32>(x_618.z, x_618.z, x_618.z)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat1;
  let x_628 : vec4<f32> = x_19.unity_WorldToLight[1i];
  u_xlat0 = (vec4<f32>(x_624.y, x_624.y, x_624.y, x_624.y) * x_628);
  let x_631 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_632 : vec4<f32> = u_xlat1;
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_631 * vec4<f32>(x_632.x, x_632.x, x_632.x, x_632.x)) + x_635);
  let x_638 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_639 : vec4<f32> = u_xlat1;
  let x_642 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_638 * vec4<f32>(x_639.z, x_639.z, x_639.z, x_639.z)) + x_642);
  let x_646 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_647 : vec4<f32> = u_xlat1;
  let x_650 : vec4<f32> = u_xlat0;
  vs_TEXCOORD8 = ((x_646 * vec4<f32>(x_647.w, x_647.w, x_647.w, x_647.w)) + x_650);
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

