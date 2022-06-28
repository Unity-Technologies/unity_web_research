struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixInvV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
  x_CameraRight : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraUp : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(3) var<uniform> x_18 : VGlobals;

var<private> u_xlatb0 : bool;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat4 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_52 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_CameraPosition;
  let x_26 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) + -(vec3<f32>(x_23.x, x_23.y, x_23.z)));
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_45 : f32 = x_18.x_WaveAndDistance.w;
  let x_47 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 < x_47);
  let x_49 : bool = u_xlatb0;
  if (x_49) {
    x_52 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_59 : vec4<f32> = in_TANGENT0;
    x_52 = vec2<f32>(x_59.x, x_59.y);
  }
  let x_61 : vec2<f32> = x_52;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_62.z, x_62.w);
  let x_64 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = x_18.x_CameraRight;
  let x_71 : vec4<f32> = in_POSITION0;
  let x_73 : vec3<f32> = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_69) + vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_74.y, x_73.y, x_73.z);
  let x_76 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = x_18.x_CameraUp;
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec3<f32> = ((vec3<f32>(x_76.y, x_76.y, x_76.y) * x_80) + vec3<f32>(x_82.x, x_82.z, x_82.w));
  let x_85 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.z) * vec2<f32>(x_91.y, x_91.y));
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_97.y, x_97.y, x_97.y, x_97.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_104 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_104.x, x_104.x, x_104.x, x_104.x) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f)) + x_111);
  let x_114 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_114.x, x_114.x, x_114.x, x_114.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_122);
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat1 = fract(x_124);
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_126 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_133 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_133 * x_134);
  let x_137 : vec4<f32> = u_xlat1;
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_137 * x_138);
  let x_140 : vec4<f32> = u_xlat3;
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_140 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_144);
  let x_146 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_146 * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_149 * x_150);
  let x_152 : vec4<f32> = u_xlat3;
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_152 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_156);
  let x_158 : vec4<f32> = u_xlat2;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_158 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_162);
  let x_164 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_164 * x_165);
  let x_167 : vec4<f32> = u_xlat1;
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_167 * x_168);
  let x_170 : vec4<f32> = u_xlat1;
  let x_171 : vec4<f32> = in_TANGENT0;
  u_xlat2 = (x_170 * vec4<f32>(x_171.y, x_171.y, x_171.y, x_171.y));
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(x_175, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_181 : f32 = u_xlat12;
  u_xlat12 = (x_181 * 0.699999988f);
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_184, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_191, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_198 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec2<f32> = ((-(vec2<f32>(x_198.x, x_198.z)) * vec2<f32>(x_202.z, x_202.z)) + vec2<f32>(x_205.x, x_205.z));
  let x_208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_207.x, x_208.y, x_207.y, x_208.w);
  let x_210 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_210.y, x_210.y, x_210.y, x_210.y) * x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = x_18.x_CameraPosition;
  let x_222 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat4 = dot(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : f32 = u_xlat4;
  let x_234 : f32 = x_18.x_WaveAndDistance.w;
  u_xlat4 = (-(x_231) + x_234);
  let x_239 : vec4<f32> = x_18.x_CameraPosition;
  let x_241 : f32 = u_xlat4;
  vs_COLOR0.w = dot(vec2<f32>(x_239.w, x_239.w), vec2<f32>(x_241, x_241));
  let x_247 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_247, 0.0f, 1.0f);
  let x_253 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_254 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_253 * vec4<f32>(x_254.x, x_254.x, x_254.x, x_254.x)) + x_257);
  let x_261 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_262 : vec4<f32> = u_xlat0;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_261 * vec4<f32>(x_262.z, x_262.z, x_262.z, x_262.z)) + x_265);
  let x_267 : vec4<f32> = u_xlat1;
  let x_270 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_267 + x_270);
  let x_272 : vec4<f32> = u_xlat1;
  let x_276 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_272.y, x_272.y, x_272.y, x_272.y) * x_276);
  let x_279 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_280 : vec4<f32> = u_xlat1;
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_279 * vec4<f32>(x_280.x, x_280.x, x_280.x, x_280.x)) + x_283);
  let x_286 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_287 : vec4<f32> = u_xlat1;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_286 * vec4<f32>(x_287.z, x_287.z, x_287.z, x_287.z)) + x_290);
  let x_298 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_299 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat2;
  gl_Position = ((x_298 * vec4<f32>(x_299.w, x_299.w, x_299.w, x_299.w)) + x_302);
  let x_307 : vec4<f32> = x_18.x_WavingTint;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : f32 = u_xlat12;
  let x_316 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat0;
  let x_327 : vec4<f32> = in_COLOR0;
  let x_329 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_334 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_342 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_342.x, x_342.y);
  let x_345 : f32 = u_xlat1.y;
  let x_347 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat0.x = (x_345 * x_347);
  let x_351 : f32 = x_18.unity_MatrixV[0i].z;
  let x_353 : f32 = u_xlat1.x;
  let x_356 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_351 * x_353) + x_356);
  let x_360 : f32 = x_18.unity_MatrixV[2i].z;
  let x_362 : f32 = u_xlat1.z;
  let x_365 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_360 * x_362) + x_365);
  let x_369 : f32 = x_18.unity_MatrixV[3i].z;
  let x_371 : f32 = u_xlat1.w;
  let x_374 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_369 * x_371) + x_374);
  let x_378 : f32 = u_xlat0.x;
  let x_380 : f32 = x_18.x_ProjectionParams.w;
  u_xlat0.x = (x_378 * x_380);
  let x_385 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = -(x_385);
  let x_389 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_393 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_395 : vec3<f32> = (vec3<f32>(x_389.x, x_389.y, x_389.z) * vec3<f32>(x_393.y, x_393.y, x_393.y));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_399 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_402 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_405 : vec4<f32> = u_xlat0;
  let x_407 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_402.x, x_402.x, x_402.x)) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_411 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_414 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_414.z, x_414.z, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_423 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_426 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_426.w, x_426.w, x_426.w)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat0;
  let x_438 : vec3<f32> = in_NORMAL0;
  u_xlat0.x = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), x_438);
  let x_442 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_445 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_447 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_445.y, x_445.y, x_445.y));
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_454 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_454.x, x_454.x, x_454.x)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_463 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_466 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_466.z, x_466.z, x_466.z)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_478 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_481 : vec4<f32> = u_xlat1;
  let x_483 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_478.w, x_478.w, x_478.w)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = in_NORMAL0;
  u_xlat0.y = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), x_488);
  let x_492 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_495 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_495.y, x_495.y, x_495.y));
  let x_498 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_504 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_507 : vec4<f32> = u_xlat1;
  let x_509 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_504.x, x_504.x, x_504.x)) + vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_516 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_519 : vec4<f32> = u_xlat1;
  let x_521 : vec3<f32> = ((vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_516.z, x_516.z, x_516.z)) + vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_528 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_528.w, x_528.w, x_528.w)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat1;
  let x_538 : vec3<f32> = in_NORMAL0;
  u_xlat0.z = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), x_538);
  let x_541 : vec4<f32> = u_xlat0;
  let x_543 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_541.x, x_541.y, x_541.z), vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_546);
  let x_548 : f32 = u_xlat12;
  let x_550 : vec4<f32> = u_xlat0;
  let x_552 : vec3<f32> = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  return;
}

struct main_out {
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_COLOR0, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}

