type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_100 : vec4<f32> = in_TANGENT0;
  let x_103 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_105 : vec3<f32> = (vec3<f32>(x_100.y, x_100.y, x_100.y) * vec3<f32>(x_103.y, x_103.z, x_103.x));
  let x_106 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_109 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_111 : vec4<f32> = in_TANGENT0;
  let x_114 : vec4<f32> = u_xlat3;
  let x_116 : vec3<f32> = ((vec3<f32>(x_109.y, x_109.z, x_109.x) * vec3<f32>(x_111.x, x_111.x, x_111.x)) + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_122 : vec4<f32> = in_TANGENT0;
  let x_125 : vec4<f32> = u_xlat3;
  let x_127 : vec3<f32> = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.z, x_122.z)) + vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat18;
  let x_141 : vec4<f32> = u_xlat3;
  let x_143 : vec3<f32> = (vec3<f32>(x_139, x_139, x_139) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_149 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_149;
  let x_156 : f32 = in_TANGENT0.w;
  let x_160 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat18 = (x_156 * x_160);
  let x_165 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_165, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_174 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_172, vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec3<f32> = in_NORMAL0;
  let x_180 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_178, vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_185 : vec4<f32> = u_xlat4;
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_190);
  let x_192 : f32 = u_xlat21;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_192, x_192, x_192, x_192) * vec4<f32>(x_194.x, x_194.y, x_194.z, x_194.z));
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec4<f32> = u_xlat4;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.w, x_200.x, x_200.y));
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat3;
  let x_210 : vec4<f32> = u_xlat5;
  let x_213 : vec3<f32> = ((vec3<f32>(x_205.y, x_205.w, x_205.x) * vec3<f32>(x_207.y, x_207.z, x_207.x)) + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : f32 = u_xlat18;
  let x_218 : vec4<f32> = u_xlat5;
  let x_220 : vec3<f32> = (vec3<f32>(x_216, x_216, x_216) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_224;
  let x_227 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_227;
  let x_230 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_230;
  let x_234 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_234;
  let x_238 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_238;
  let x_241 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_241;
  let x_244 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_244;
  let x_247 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_247;
  let x_250 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_250;
  let x_253 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_253;
  let x_256 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_256;
  let x_260 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_260;
  let x_266 : vec2<f32> = in_TEXCOORD0;
  let x_269 : vec4<f32> = x_20.x_MainTex_ST;
  let x_273 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_266 * vec2<f32>(x_269.x, x_269.y)) + vec2<f32>(x_273.z, x_273.w));
  let x_278 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_278;
  let x_280 : vec4<f32> = u_xlat2;
  let x_281 : vec2<f32> = vec2<f32>(x_280.z, x_280.w);
  let x_282 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_282.x, x_282.y, x_281.x, x_281.y);
  let x_285 : f32 = u_xlat1.y;
  let x_288 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat18 = (x_285 * x_288);
  let x_291 : f32 = x_20.unity_MatrixV[0i].z;
  let x_293 : f32 = u_xlat1.x;
  let x_295 : f32 = u_xlat18;
  u_xlat18 = ((x_291 * x_293) + x_295);
  let x_298 : f32 = x_20.unity_MatrixV[2i].z;
  let x_300 : f32 = u_xlat1.z;
  let x_302 : f32 = u_xlat18;
  u_xlat18 = ((x_298 * x_300) + x_302);
  let x_305 : f32 = x_20.unity_MatrixV[3i].z;
  let x_307 : f32 = u_xlat1.w;
  let x_309 : f32 = u_xlat18;
  u_xlat18 = ((x_305 * x_307) + x_309);
  let x_313 : f32 = u_xlat18;
  vs_TEXCOORD4.z = -(x_313);
  let x_317 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_322 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_320.x, x_320.y, x_320.w));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_328 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.w) * vec3<f32>(x_328.x, x_328.x, x_328.x)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_339 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.w) * vec3<f32>(x_339.z, x_339.z, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_350 : vec4<f32> = u_xlat1;
  let x_353 : vec4<f32> = u_xlat1;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.w) * vec3<f32>(x_350.w, x_350.w, x_350.w)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_359;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_365 : f32 = x_20.x_ProjectionParams.x;
  u_xlat3.y = x_365;
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.w) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat1.y;
  u_xlat1.w = (x_382 * 0.5f);
  let x_385 : vec4<f32> = u_xlat1;
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec2<f32> = (vec2<f32>(x_385.z, x_385.z) + vec2<f32>(x_387.x, x_387.w));
  let x_390 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_392.x, x_392.x, x_392.x, x_392.x)) + x_396);
  let x_398 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_398.y, x_398.y, x_398.y, x_398.y)) + x_402);
  let x_404 : vec4<f32> = u_xlat0;
  let x_408 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_404.z, x_404.z, x_404.z, x_404.z)) + x_408);
  let x_410 : vec4<f32> = u_xlat4;
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_410.y, x_410.y, x_410.y, x_410.y) * x_412);
  let x_414 : vec4<f32> = u_xlat3;
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_414 * x_415);
  let x_417 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat1;
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_417 * x_418) + x_420);
  let x_422 : vec4<f32> = u_xlat1;
  let x_423 : vec4<f32> = u_xlat4;
  let x_426 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_422 * vec4<f32>(x_423.x, x_423.x, x_423.x, x_423.x)) + x_426);
  let x_428 : vec4<f32> = u_xlat0;
  let x_429 : vec4<f32> = u_xlat4;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_428 * vec4<f32>(x_429.w, x_429.w, x_429.z, x_429.w)) + x_432);
  let x_434 : vec4<f32> = u_xlat0;
  let x_435 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_434 * x_435) + x_437);
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_439, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_443);
  let x_445 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_445 * x_448) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_453 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_453);
  let x_455 : vec4<f32> = u_xlat1;
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_455 * x_456);
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_458, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_462 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_462 * x_463);
  let x_465 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_471 : vec3<f32> = (vec3<f32>(x_465.y, x_465.y, x_465.y) * vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_477 : vec4<f32> = u_xlat0;
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.x, x_477.x, x_477.x)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_488 : vec4<f32> = u_xlat0;
  let x_491 : vec4<f32> = u_xlat1;
  let x_493 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488.z, x_488.z, x_488.z)) + vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_499 : vec4<f32> = u_xlat0;
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_499.w, x_499.w, x_499.w)) + vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_508 : f32 = u_xlat4.y;
  let x_510 : f32 = u_xlat4.y;
  u_xlat18 = (x_508 * x_510);
  let x_513 : f32 = u_xlat4.x;
  let x_515 : f32 = u_xlat4.x;
  let x_517 : f32 = u_xlat18;
  u_xlat18 = ((x_513 * x_515) + -(x_517));
  let x_520 : vec4<f32> = u_xlat4;
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_520.y, x_520.w, x_520.z, x_520.x) * x_522);
  let x_526 : vec4<f32> = x_20.unity_SHBr;
  let x_527 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_526, x_527);
  let x_532 : vec4<f32> = x_20.unity_SHBg;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_532, x_533);
  let x_538 : vec4<f32> = x_20.unity_SHBb;
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_538, x_539);
  let x_544 : vec4<f32> = x_20.unity_SHC;
  let x_546 : f32 = u_xlat18;
  let x_549 : vec4<f32> = u_xlat3;
  let x_551 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(x_546, x_546, x_546)) + vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_556 : vec4<f32> = u_xlat0;
  let x_558 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_562 : f32 = u_xlat2.y;
  u_xlat2.w = (x_562 * 0.5f);
  let x_565 : vec4<f32> = u_xlat2;
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec2<f32> = (vec2<f32>(x_565.z, x_565.z) + vec2<f32>(x_567.x, x_567.w));
  let x_570 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD6_1 : f32,
  @location(7)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD6, vs_TEXCOORD7, vs_TEXCOORD5);
}

