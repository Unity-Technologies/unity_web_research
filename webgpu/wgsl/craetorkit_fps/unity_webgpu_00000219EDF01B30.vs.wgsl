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

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

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
  var x_97 : vec2<f32>;
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
  let x_77 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_78 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat1;
  gl_Position = ((x_77 * vec4<f32>(x_78.w, x_78.w, x_78.w, x_78.w)) + x_81);
  let x_91 : f32 = x_21.x_UVSec;
  u_xlatb0 = (x_91 == 0.0f);
  let x_94 : bool = u_xlatb0;
  if (x_94) {
    let x_102 : vec2<f32> = in_TEXCOORD0;
    x_97 = x_102;
  } else {
    let x_105 : vec2<f32> = in_TEXCOORD1;
    x_97 = x_105;
  }
  let x_106 : vec2<f32> = x_97;
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_114 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_118 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_120 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_121.x, x_121.y, x_120.x, x_120.y);
  let x_123 : vec2<f32> = in_TEXCOORD0;
  let x_126 : vec4<f32> = x_21.x_MainTex_ST;
  let x_130 : vec4<f32> = x_21.x_MainTex_ST;
  let x_132 : vec2<f32> = ((x_123 * vec2<f32>(x_126.x, x_126.y)) + vec2<f32>(x_130.z, x_130.w));
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_132.x, x_132.y, x_133.z, x_133.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_139 : vec4<f32> = in_POSITION0;
  let x_142 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_144 : vec3<f32> = (vec3<f32>(x_139.y, x_139.y, x_139.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_150 : vec4<f32> = in_POSITION0;
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_161 : vec4<f32> = in_POSITION0;
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = ((vec3<f32>(x_159.x, x_159.y, x_159.z) * vec3<f32>(x_161.z, x_161.z, x_161.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_172 : vec4<f32> = in_POSITION0;
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.w, x_172.w, x_172.w)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_186 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(x_184));
  let x_187 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = in_TANGENT0;
  let x_193 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_195 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_201 : vec4<f32> = in_TANGENT0;
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.x, x_201.x, x_201.x)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_212 : vec4<f32> = in_TANGENT0;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_222.x, x_222.y, x_222.z), vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_227);
  let x_229 : f32 = u_xlat15;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : vec4<f32> = u_xlat1;
  let x_238 : vec3<f32> = vec3<f32>(x_237.x, x_237.y, x_237.z);
  let x_239 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_243 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_243;
  let x_249 : vec3<f32> = in_NORMAL0;
  let x_252 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_249, vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec3<f32> = in_NORMAL0;
  let x_258 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_256, vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_262 : vec3<f32> = in_NORMAL0;
  let x_264 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_262, vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_269 : vec3<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_269, x_270);
  let x_272 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_272);
  let x_274 : f32 = u_xlat15;
  let x_276 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_274, x_274, x_274) * x_276);
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec3<f32> = u_xlat2;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.y, x_279.z, x_279.x) * vec3<f32>(x_281.z, x_281.x, x_281.y));
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec3<f32> = u_xlat2;
  let x_288 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = u_xlat3;
  let x_294 : vec3<f32> = ((vec3<f32>(x_286.y, x_286.z, x_286.x) * vec3<f32>(x_288.z, x_288.x, x_288.y)) + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_299 : f32 = in_TANGENT0.w;
  let x_302 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat15 = (x_299 * x_302);
  let x_305 : f32 = u_xlat15;
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = (vec3<f32>(x_305, x_305, x_305) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_313;
  let x_317 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_317;
  let x_319 : vec3<f32> = u_xlat2;
  let x_320 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_322.x, x_322.x, x_322.x, x_322.x)) + x_326);
  let x_328 : vec4<f32> = u_xlat0;
  let x_332 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_328.y, x_328.y, x_328.y, x_328.y)) + x_332);
  let x_334 : vec4<f32> = u_xlat0;
  let x_338 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_334.z, x_334.z, x_334.z, x_334.z)) + x_338);
  let x_341 : vec3<f32> = u_xlat2;
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_341.y, x_341.y, x_341.y, x_341.y) * x_343);
  let x_345 : vec4<f32> = u_xlat3;
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_345 * x_346);
  let x_348 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_348 * x_349) + x_351);
  let x_353 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = u_xlat2;
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_353 * vec4<f32>(x_354.x, x_354.x, x_354.x, x_354.x)) + x_357);
  let x_359 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = u_xlat2;
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_359 * vec4<f32>(x_360.z, x_360.z, x_360.z, x_360.z)) + x_363);
  let x_365 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_365 * x_366) + x_368);
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_370, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_374);
  let x_376 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_376 * x_379) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_384);
  let x_386 : vec4<f32> = u_xlat1;
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_386 * x_387);
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_389, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_392 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_392 * x_393);
  let x_395 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_401 : vec3<f32> = (vec3<f32>(x_395.y, x_395.y, x_395.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_407 : vec4<f32> = u_xlat0;
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407.x, x_407.x, x_407.x)) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_418 : vec4<f32> = u_xlat0;
  let x_421 : vec4<f32> = u_xlat1;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_418.z, x_418.z, x_418.z)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_429 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat0;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.w, x_429.w, x_429.w)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : f32 = u_xlat2.y;
  let x_440 : f32 = u_xlat2.y;
  u_xlat15 = (x_438 * x_440);
  let x_443 : f32 = u_xlat2.x;
  let x_445 : f32 = u_xlat2.x;
  let x_447 : f32 = u_xlat15;
  u_xlat15 = ((x_443 * x_445) + -(x_447));
  let x_450 : vec3<f32> = u_xlat2;
  let x_452 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_450.y, x_450.z, x_450.z, x_450.x) * vec4<f32>(x_452.x, x_452.y, x_452.z, x_452.z));
  let x_457 : vec4<f32> = x_21.unity_SHBr;
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_457, x_458);
  let x_463 : vec4<f32> = x_21.unity_SHBg;
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_463, x_464);
  let x_469 : vec4<f32> = x_21.unity_SHBb;
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_469, x_470);
  let x_475 : vec4<f32> = x_21.unity_SHC;
  let x_477 : f32 = u_xlat15;
  let x_480 : vec3<f32> = u_xlat2;
  let x_481 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477, x_477, x_477)) + x_480);
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = u_xlat1;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) + vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

