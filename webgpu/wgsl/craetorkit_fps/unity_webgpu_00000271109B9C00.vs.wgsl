type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_106 : vec2<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_32 : vec4<f32> = in_POSITION0;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_40 : vec4<f32> = in_POSITION0;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_45 + x_48);
  let x_51 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_51.y, x_51.y, x_51.y, x_51.y) * x_55);
  let x_58 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_65 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_65 * vec4<f32>(x_66.z, x_66.z, x_66.z, x_66.z)) + x_69);
  let x_72 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_73 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_72 * vec4<f32>(x_73.w, x_73.w, x_73.w, x_73.w)) + x_76);
  let x_83 : vec4<f32> = u_xlat0;
  gl_Position = x_83;
  let x_90 : f32 = u_xlat0.z;
  vs_TEXCOORD1.w = x_90;
  let x_100 : f32 = x_21.x_UVSec;
  u_xlatb0 = (x_100 == 0.0f);
  let x_103 : bool = u_xlatb0;
  if (x_103) {
    let x_111 : vec2<f32> = in_TEXCOORD0;
    x_106 = x_111;
  } else {
    let x_114 : vec2<f32> = in_TEXCOORD1;
    x_106 = x_114;
  }
  let x_115 : vec2<f32> = x_106;
  let x_116 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_119 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_127 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_129 : vec2<f32> = ((vec2<f32>(x_119.x, x_119.y) * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(x_127.z, x_127.w));
  let x_130 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_130.x, x_130.y, x_129.x, x_129.y);
  let x_132 : vec2<f32> = in_TEXCOORD0;
  let x_135 : vec4<f32> = x_21.x_MainTex_ST;
  let x_139 : vec4<f32> = x_21.x_MainTex_ST;
  let x_141 : vec2<f32> = ((x_132 * vec2<f32>(x_135.x, x_135.y)) + vec2<f32>(x_139.z, x_139.w));
  let x_142 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_144 : vec4<f32> = in_POSITION0;
  let x_147 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_149 : vec3<f32> = (vec3<f32>(x_144.y, x_144.y, x_144.y) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_155 : vec4<f32> = in_POSITION0;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.z, x_166.z, x_166.z)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_177 : vec4<f32> = in_POSITION0;
  let x_180 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.w, x_177.w, x_177.w)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_191 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + -(x_189));
  let x_192 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = in_TANGENT0;
  let x_198 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_200 : vec3<f32> = (vec3<f32>(x_195.y, x_195.y, x_195.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_204 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_206 : vec4<f32> = in_TANGENT0;
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.x, x_206.x)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_217 : vec4<f32> = in_TANGENT0;
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.z, x_217.z, x_217.z)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_231);
  let x_233 : f32 = u_xlat15;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_241 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = vec3<f32>(x_241.x, x_241.y, x_241.z);
  let x_243 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_247 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_247;
  let x_253 : vec3<f32> = in_NORMAL0;
  let x_256 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_253, vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_260 : vec3<f32> = in_NORMAL0;
  let x_262 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_260, vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_266 : vec3<f32> = in_NORMAL0;
  let x_268 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_266, vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_272 : vec3<f32> = u_xlat2;
  let x_273 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_272, x_273);
  let x_275 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_275);
  let x_277 : f32 = u_xlat15;
  let x_279 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_277, x_277, x_277) * x_279);
  let x_282 : vec4<f32> = u_xlat1;
  let x_284 : vec3<f32> = u_xlat2;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.y, x_282.z, x_282.x) * vec3<f32>(x_284.z, x_284.x, x_284.y));
  let x_287 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec3<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat1;
  let x_294 : vec4<f32> = u_xlat3;
  let x_297 : vec3<f32> = ((vec3<f32>(x_289.y, x_289.z, x_289.x) * vec3<f32>(x_291.z, x_291.x, x_291.y)) + -(vec3<f32>(x_294.x, x_294.y, x_294.z)));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_302 : f32 = in_TANGENT0.w;
  let x_305 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat15 = (x_302 * x_305);
  let x_308 : f32 = u_xlat15;
  let x_310 : vec4<f32> = u_xlat1;
  let x_312 : vec3<f32> = (vec3<f32>(x_308, x_308, x_308) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_316;
  let x_320 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_320;
  let x_322 : vec3<f32> = u_xlat2;
  let x_323 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_325.x, x_325.x, x_325.x, x_325.x)) + x_329);
  let x_331 : vec4<f32> = u_xlat0;
  let x_335 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_331.y, x_331.y, x_331.y, x_331.y)) + x_335);
  let x_337 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_337.z, x_337.z, x_337.z, x_337.z)) + x_341);
  let x_344 : vec3<f32> = u_xlat2;
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_344.y, x_344.y, x_344.y, x_344.y) * x_346);
  let x_348 : vec4<f32> = u_xlat3;
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_348 * x_349);
  let x_351 : vec4<f32> = u_xlat1;
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_351 * x_352) + x_354);
  let x_356 : vec4<f32> = u_xlat1;
  let x_357 : vec3<f32> = u_xlat2;
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_356 * vec4<f32>(x_357.x, x_357.x, x_357.x, x_357.x)) + x_360);
  let x_362 : vec4<f32> = u_xlat0;
  let x_363 : vec3<f32> = u_xlat2;
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_362 * vec4<f32>(x_363.z, x_363.z, x_363.z, x_363.z)) + x_366);
  let x_368 : vec4<f32> = u_xlat0;
  let x_369 : vec4<f32> = u_xlat0;
  let x_371 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_368 * x_369) + x_371);
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_373, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_377);
  let x_379 : vec4<f32> = u_xlat0;
  let x_382 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_379 * x_382) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_387);
  let x_389 : vec4<f32> = u_xlat1;
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_389 * x_390);
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_392, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_395 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_395 * x_396);
  let x_398 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_404 : vec3<f32> = (vec3<f32>(x_398.y, x_398.y, x_398.y) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_410 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = u_xlat1;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410.x, x_410.x, x_410.x)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_421 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = ((vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(x_421.z, x_421.z, x_421.z)) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_432 : vec4<f32> = u_xlat0;
  let x_435 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = ((vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(x_432.w, x_432.w, x_432.w)) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_441 : f32 = u_xlat2.y;
  let x_443 : f32 = u_xlat2.y;
  u_xlat15 = (x_441 * x_443);
  let x_446 : f32 = u_xlat2.x;
  let x_448 : f32 = u_xlat2.x;
  let x_450 : f32 = u_xlat15;
  u_xlat15 = ((x_446 * x_448) + -(x_450));
  let x_453 : vec3<f32> = u_xlat2;
  let x_455 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_453.y, x_453.z, x_453.z, x_453.x) * vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.z));
  let x_460 : vec4<f32> = x_21.unity_SHBr;
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_460, x_461);
  let x_466 : vec4<f32> = x_21.unity_SHBg;
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_466, x_467);
  let x_472 : vec4<f32> = x_21.unity_SHBb;
  let x_473 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_472, x_473);
  let x_478 : vec4<f32> = x_21.unity_SHC;
  let x_480 : f32 = u_xlat15;
  let x_483 : vec3<f32> = u_xlat2;
  let x_484 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480, x_480, x_480)) + x_483);
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : vec4<f32> = u_xlat0;
  let x_490 : vec4<f32> = u_xlat1;
  let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

