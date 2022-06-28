type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(18) var<uniform> x_21 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_98 : vec2<f32>;
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
  let x_92 : f32 = x_21.x_UVSec;
  u_xlatb1 = (x_92 == 0.0f);
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_103 : vec2<f32> = in_TEXCOORD0;
    x_98 = x_103;
  } else {
    let x_106 : vec2<f32> = in_TEXCOORD1;
    x_98 = x_106;
  }
  let x_107 : vec2<f32> = x_98;
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
  let x_111 : vec4<f32> = u_xlat1;
  let x_115 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_119 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_121 : vec2<f32> = ((vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_122.x, x_122.y, x_121.x, x_121.y);
  let x_124 : vec2<f32> = in_TEXCOORD0;
  let x_127 : vec4<f32> = x_21.x_MainTex_ST;
  let x_131 : vec4<f32> = x_21.x_MainTex_ST;
  let x_133 : vec2<f32> = ((x_124 * vec2<f32>(x_127.x, x_127.y)) + vec2<f32>(x_131.z, x_131.w));
  let x_134 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_133.x, x_133.y, x_134.z, x_134.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_140 : vec4<f32> = in_POSITION0;
  let x_143 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_145 : vec3<f32> = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_151 : vec4<f32> = in_POSITION0;
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.x, x_151.x, x_151.x)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_162 : vec4<f32> = in_POSITION0;
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_173 : vec4<f32> = in_POSITION0;
  let x_176 : vec4<f32> = u_xlat1;
  let x_178 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.w, x_173.w, x_173.w)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat1;
  let x_185 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_187 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + -(x_185));
  let x_188 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_192 : vec4<f32> = in_TANGENT0;
  let x_195 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_197 : vec3<f32> = (vec3<f32>(x_192.y, x_192.y, x_192.y) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_203 : vec4<f32> = in_TANGENT0;
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203.x, x_203.x, x_203.x)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_214 : vec4<f32> = in_TANGENT0;
  let x_217 : vec4<f32> = u_xlat2;
  let x_219 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.z, x_214.z, x_214.z)) + vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_229);
  let x_231 : f32 = u_xlat19;
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec3<f32> = (vec3<f32>(x_231, x_231, x_231) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = vec3<f32>(x_239.x, x_239.y, x_239.z);
  let x_241 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_245 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_245;
  let x_251 : vec3<f32> = in_NORMAL0;
  let x_254 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_251, vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_258 : vec3<f32> = in_NORMAL0;
  let x_260 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_258, vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_264 : vec3<f32> = in_NORMAL0;
  let x_266 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_264, vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_271 : vec3<f32> = u_xlat3;
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat19 = dot(x_271, x_272);
  let x_274 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_274);
  let x_276 : f32 = u_xlat19;
  let x_278 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_276, x_276, x_276) * x_278);
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec3<f32> = u_xlat3;
  let x_285 : vec3<f32> = (vec3<f32>(x_281.y, x_281.z, x_281.x) * vec3<f32>(x_283.z, x_283.x, x_283.y));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec3<f32> = u_xlat3;
  let x_290 : vec4<f32> = u_xlat2;
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec3<f32> = ((vec3<f32>(x_288.y, x_288.z, x_288.x) * vec3<f32>(x_290.z, x_290.x, x_290.y)) + -(vec3<f32>(x_293.x, x_293.y, x_293.z)));
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_301 : f32 = in_TANGENT0.w;
  let x_304 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat19 = (x_301 * x_304);
  let x_307 : f32 = u_xlat19;
  let x_309 : vec4<f32> = u_xlat2;
  let x_311 : vec3<f32> = (vec3<f32>(x_307, x_307, x_307) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_315;
  let x_319 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_319;
  let x_321 : vec3<f32> = u_xlat3;
  let x_322 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_324.x, x_324.x, x_324.x, x_324.x)) + x_328);
  let x_330 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_330.y, x_330.y, x_330.y, x_330.y)) + x_334);
  let x_336 : vec4<f32> = u_xlat1;
  let x_341 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_336.z, x_336.z, x_336.z, x_336.z)) + x_341);
  let x_344 : vec3<f32> = u_xlat3;
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_344.y, x_344.y, x_344.y, x_344.y) * x_346);
  let x_348 : vec4<f32> = u_xlat4;
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_348 * x_349);
  let x_351 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = u_xlat2;
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_351 * x_352) + x_354);
  let x_356 : vec4<f32> = u_xlat2;
  let x_357 : vec3<f32> = u_xlat3;
  let x_360 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_356 * vec4<f32>(x_357.x, x_357.x, x_357.x, x_357.x)) + x_360);
  let x_362 : vec4<f32> = u_xlat1;
  let x_363 : vec3<f32> = u_xlat3;
  let x_366 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_362 * vec4<f32>(x_363.z, x_363.z, x_363.z, x_363.z)) + x_366);
  let x_368 : vec4<f32> = u_xlat1;
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_368 * x_369) + x_371);
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_373, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat4 = inverseSqrt(x_377);
  let x_379 : vec4<f32> = u_xlat1;
  let x_382 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat1 = ((x_379 * x_382) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_387);
  let x_389 : vec4<f32> = u_xlat2;
  let x_390 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_389 * x_390);
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_392, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_395 : vec4<f32> = u_xlat1;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_395 * x_396);
  let x_398 : vec4<f32> = u_xlat1;
  let x_402 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_404 : vec3<f32> = (vec3<f32>(x_398.y, x_398.y, x_398.y) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_410 : vec4<f32> = u_xlat1;
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410.x, x_410.x, x_410.x)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_421 : vec4<f32> = u_xlat1;
  let x_424 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = ((vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(x_421.z, x_421.z, x_421.z)) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_432 : vec4<f32> = u_xlat1;
  let x_435 : vec4<f32> = u_xlat1;
  let x_437 : vec3<f32> = ((vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(x_432.w, x_432.w, x_432.w)) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_441 : f32 = u_xlat3.y;
  let x_443 : f32 = u_xlat3.y;
  u_xlat19 = (x_441 * x_443);
  let x_446 : f32 = u_xlat3.x;
  let x_448 : f32 = u_xlat3.x;
  let x_450 : f32 = u_xlat19;
  u_xlat19 = ((x_446 * x_448) + -(x_450));
  let x_453 : vec3<f32> = u_xlat3;
  let x_455 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_453.y, x_453.z, x_453.z, x_453.x) * vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.z));
  let x_460 : vec4<f32> = x_21.unity_SHBr;
  let x_461 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_460, x_461);
  let x_466 : vec4<f32> = x_21.unity_SHBg;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_466, x_467);
  let x_472 : vec4<f32> = x_21.unity_SHBb;
  let x_473 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_472, x_473);
  let x_478 : vec4<f32> = x_21.unity_SHC;
  let x_480 : f32 = u_xlat19;
  let x_483 : vec3<f32> = u_xlat3;
  let x_484 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480, x_480, x_480)) + x_483);
  let x_485 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : vec4<f32> = u_xlat1;
  let x_490 : vec4<f32> = u_xlat2;
  let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_497 : f32 = u_xlat0.y;
  let x_499 : f32 = x_21.x_ProjectionParams.x;
  u_xlat0.y = (x_497 * x_499);
  let x_502 : vec4<f32> = u_xlat0;
  let x_506 : vec3<f32> = (vec3<f32>(x_502.x, x_502.w, x_502.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_507.y, x_506.y, x_506.z);
  let x_510 : vec4<f32> = u_xlat0;
  let x_511 : vec2<f32> = vec2<f32>(x_510.z, x_510.w);
  let x_512 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_512.x, x_512.y, x_511.x, x_511.y);
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec2<f32> = (vec2<f32>(x_514.z, x_514.z) + vec2<f32>(x_516.x, x_516.w));
  let x_519 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
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
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7);
}

