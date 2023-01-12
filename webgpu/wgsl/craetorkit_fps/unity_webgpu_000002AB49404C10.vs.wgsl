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
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

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
  let x_101 : vec4<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_20.x_MainTex_ST;
  let x_109 : vec4<f32> = x_20.x_MainTex_ST;
  let x_111 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(x_105.x, x_105.y)) + vec2<f32>(x_109.z, x_109.w));
  let x_112 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_114 : vec4<f32> = in_TEXCOORD0;
  let x_118 : vec4<f32> = x_20.x_Normal_ST;
  let x_122 : vec4<f32> = x_20.x_Normal_ST;
  let x_124 : vec2<f32> = ((vec2<f32>(x_114.x, x_114.y) * vec2<f32>(x_118.x, x_118.y)) + vec2<f32>(x_122.z, x_122.w));
  let x_125 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_125.x, x_125.y, x_124.x, x_124.y);
  let x_129 : vec4<f32> = in_TANGENT0;
  let x_132 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_134 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_132.y, x_132.z, x_132.x));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_140 : vec4<f32> = in_TANGENT0;
  let x_143 : vec4<f32> = u_xlat3;
  let x_145 : vec3<f32> = ((vec3<f32>(x_138.y, x_138.z, x_138.x) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = in_TANGENT0;
  let x_154 : vec4<f32> = u_xlat3;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.y, x_149.z, x_149.x) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat18;
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_178 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_178;
  let x_185 : f32 = in_TANGENT0.w;
  let x_189 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat18 = (x_185 * x_189);
  let x_194 : vec3<f32> = in_NORMAL0;
  let x_197 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_194, vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec3<f32> = in_NORMAL0;
  let x_203 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_201, vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec3<f32> = in_NORMAL0;
  let x_209 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_207, vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_214 : vec4<f32> = u_xlat4;
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_219);
  let x_221 : f32 = u_xlat21;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_221, x_221, x_221, x_221) * vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.z));
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = u_xlat4;
  let x_231 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.w, x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec4<f32> = u_xlat5;
  let x_242 : vec3<f32> = ((vec3<f32>(x_234.y, x_234.w, x_234.x) * vec3<f32>(x_236.y, x_236.z, x_236.x)) + -(vec3<f32>(x_239.x, x_239.y, x_239.z)));
  let x_243 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : f32 = u_xlat18;
  let x_247 : vec4<f32> = u_xlat5;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_253;
  let x_256 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_256;
  let x_259 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_259;
  let x_263 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_263;
  let x_267 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_267;
  let x_270 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_270;
  let x_273 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_273;
  let x_276 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_276;
  let x_279 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_279;
  let x_282 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_282;
  let x_285 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_285;
  let x_289 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_289;
  let x_291 : f32 = u_xlat1.y;
  let x_294 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat18 = (x_291 * x_294);
  let x_297 : f32 = x_20.unity_MatrixV[0i].z;
  let x_299 : f32 = u_xlat1.x;
  let x_301 : f32 = u_xlat18;
  u_xlat18 = ((x_297 * x_299) + x_301);
  let x_304 : f32 = x_20.unity_MatrixV[2i].z;
  let x_306 : f32 = u_xlat1.z;
  let x_308 : f32 = u_xlat18;
  u_xlat18 = ((x_304 * x_306) + x_308);
  let x_311 : f32 = x_20.unity_MatrixV[3i].z;
  let x_313 : f32 = u_xlat1.w;
  let x_315 : f32 = u_xlat18;
  u_xlat18 = ((x_311 * x_313) + x_315);
  let x_319 : f32 = u_xlat18;
  vs_TEXCOORD4.z = -(x_319);
  let x_323 : vec4<f32> = u_xlat1;
  let x_326 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_328 : vec3<f32> = (vec3<f32>(x_323.y, x_323.y, x_323.y) * vec3<f32>(x_326.x, x_326.y, x_326.w));
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_334 : vec4<f32> = u_xlat1;
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.w) * vec3<f32>(x_334.x, x_334.x, x_334.x)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_345 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.w) * vec3<f32>(x_345.z, x_345.z, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_356 : vec4<f32> = u_xlat1;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.w) * vec3<f32>(x_356.w, x_356.w, x_356.w)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_365;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_371 : f32 = x_20.x_ProjectionParams.x;
  u_xlat3.y = x_371;
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec4<f32> = u_xlat3;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat2;
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.w) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_388 : vec4<f32> = u_xlat2;
  let x_389 : vec2<f32> = vec2<f32>(x_388.z, x_388.w);
  let x_390 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_390.x, x_390.y, x_389.x, x_389.y);
  let x_393 : f32 = u_xlat1.y;
  u_xlat1.w = (x_393 * 0.5f);
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec2<f32> = (vec2<f32>(x_396.z, x_396.z) + vec2<f32>(x_398.x, x_398.w));
  let x_401 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat0;
  let x_407 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_403.x, x_403.x, x_403.x, x_403.x)) + x_407);
  let x_409 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_409.y, x_409.y, x_409.y, x_409.y)) + x_413);
  let x_415 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_415.z, x_415.z, x_415.z, x_415.z)) + x_419);
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_421.y, x_421.y, x_421.y, x_421.y) * x_423);
  let x_425 : vec4<f32> = u_xlat2;
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_425 * x_426);
  let x_428 : vec4<f32> = u_xlat1;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_428 * x_429) + x_431);
  let x_433 : vec4<f32> = u_xlat1;
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_433 * vec4<f32>(x_434.x, x_434.x, x_434.x, x_434.x)) + x_437);
  let x_439 : vec4<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat4;
  let x_443 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_439 * vec4<f32>(x_440.w, x_440.w, x_440.z, x_440.w)) + x_443);
  let x_445 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_445 * x_446) + x_448);
  let x_450 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_450, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_454);
  let x_456 : vec4<f32> = u_xlat0;
  let x_459 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_456 * x_459) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_464 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_464);
  let x_466 : vec4<f32> = u_xlat1;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_466 * x_467);
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_469, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_473 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_473 * x_474);
  let x_476 : vec4<f32> = u_xlat0;
  let x_480 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_482 : vec3<f32> = (vec3<f32>(x_476.y, x_476.y, x_476.y) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_488 : vec4<f32> = u_xlat0;
  let x_491 : vec4<f32> = u_xlat1;
  let x_493 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488.x, x_488.x, x_488.x)) + vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_499 : vec4<f32> = u_xlat0;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_499.z, x_499.z, x_499.z)) + vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_508 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_510 : vec4<f32> = u_xlat0;
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_510.w, x_510.w, x_510.w)) + vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_519 : f32 = u_xlat4.y;
  let x_521 : f32 = u_xlat4.y;
  u_xlat18 = (x_519 * x_521);
  let x_524 : f32 = u_xlat4.x;
  let x_526 : f32 = u_xlat4.x;
  let x_528 : f32 = u_xlat18;
  u_xlat18 = ((x_524 * x_526) + -(x_528));
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_531.y, x_531.w, x_531.z, x_531.x) * x_533);
  let x_537 : vec4<f32> = x_20.unity_SHBr;
  let x_538 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_537, x_538);
  let x_543 : vec4<f32> = x_20.unity_SHBg;
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_543, x_544);
  let x_549 : vec4<f32> = x_20.unity_SHBb;
  let x_550 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_549, x_550);
  let x_555 : vec4<f32> = x_20.unity_SHC;
  let x_557 : f32 = u_xlat18;
  let x_560 : vec4<f32> = u_xlat2;
  let x_562 : vec3<f32> = ((vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_557, x_557, x_557)) + vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_567 : vec4<f32> = u_xlat0;
  let x_569 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_567.x, x_567.y, x_567.z) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_573 : f32 = u_xlat3.y;
  u_xlat3.w = (x_573 * 0.5f);
  let x_576 : vec4<f32> = u_xlat3;
  let x_578 : vec4<f32> = u_xlat3;
  let x_580 : vec2<f32> = (vec2<f32>(x_576.z, x_576.z) + vec2<f32>(x_578.x, x_578.w));
  let x_581 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_COLOR0_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD7, vs_TEXCOORD5);
}

