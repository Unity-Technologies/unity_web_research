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
  var u_xlatb1 : bool;
  var x_98 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
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
  let x_140 : f32 = u_xlat0.z;
  vs_TEXCOORD1.w = x_140;
  let x_144 : vec4<f32> = in_POSITION0;
  let x_147 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_149 : vec3<f32> = (vec3<f32>(x_144.y, x_144.y, x_144.y) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_155 : vec4<f32> = in_POSITION0;
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.z, x_166.z, x_166.z)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_177 : vec4<f32> = in_POSITION0;
  let x_180 : vec4<f32> = u_xlat1;
  let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.w, x_177.w, x_177.w)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_189 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_191 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + -(x_189));
  let x_192 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_196 : vec4<f32> = in_TANGENT0;
  let x_199 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_201 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_207 : vec4<f32> = in_TANGENT0;
  let x_210 : vec4<f32> = u_xlat2;
  let x_212 : vec3<f32> = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.x, x_207.x, x_207.x)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_218 : vec4<f32> = in_TANGENT0;
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.z, x_218.z, x_218.z)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_232);
  let x_234 : f32 = u_xlat19;
  let x_236 : vec4<f32> = u_xlat2;
  let x_238 : vec3<f32> = (vec3<f32>(x_234, x_234, x_234) * vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = u_xlat2;
  let x_243 : vec3<f32> = vec3<f32>(x_242.x, x_242.y, x_242.z);
  let x_244 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_248 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_248;
  let x_254 : vec3<f32> = in_NORMAL0;
  let x_257 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_254, vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_261 : vec3<f32> = in_NORMAL0;
  let x_263 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_261, vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_267 : vec3<f32> = in_NORMAL0;
  let x_269 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_267, vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_273 : vec3<f32> = u_xlat3;
  let x_274 : vec3<f32> = u_xlat3;
  u_xlat19 = dot(x_273, x_274);
  let x_276 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_276);
  let x_278 : f32 = u_xlat19;
  let x_280 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_278, x_278, x_278) * x_280);
  let x_283 : vec4<f32> = u_xlat2;
  let x_285 : vec3<f32> = u_xlat3;
  let x_287 : vec3<f32> = (vec3<f32>(x_283.y, x_283.z, x_283.x) * vec3<f32>(x_285.z, x_285.x, x_285.y));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : vec3<f32> = u_xlat3;
  let x_292 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat4;
  let x_298 : vec3<f32> = ((vec3<f32>(x_290.y, x_290.z, x_290.x) * vec3<f32>(x_292.z, x_292.x, x_292.y)) + -(vec3<f32>(x_295.x, x_295.y, x_295.z)));
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_303 : f32 = in_TANGENT0.w;
  let x_306 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat19 = (x_303 * x_306);
  let x_309 : f32 = u_xlat19;
  let x_311 : vec4<f32> = u_xlat2;
  let x_313 : vec3<f32> = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_317;
  let x_321 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_321;
  let x_323 : vec3<f32> = u_xlat3;
  let x_324 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat1;
  let x_330 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_326.x, x_326.x, x_326.x, x_326.x)) + x_330);
  let x_332 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_332.y, x_332.y, x_332.y, x_332.y)) + x_336);
  let x_338 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_338.z, x_338.z, x_338.z, x_338.z)) + x_343);
  let x_346 : vec3<f32> = u_xlat3;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_346.y, x_346.y, x_346.y, x_346.y) * x_348);
  let x_350 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_350 * x_351);
  let x_353 : vec4<f32> = u_xlat2;
  let x_354 : vec4<f32> = u_xlat2;
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_353 * x_354) + x_356);
  let x_358 : vec4<f32> = u_xlat2;
  let x_359 : vec3<f32> = u_xlat3;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_358 * vec4<f32>(x_359.x, x_359.x, x_359.x, x_359.x)) + x_362);
  let x_364 : vec4<f32> = u_xlat1;
  let x_365 : vec3<f32> = u_xlat3;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_364 * vec4<f32>(x_365.z, x_365.z, x_365.z, x_365.z)) + x_368);
  let x_370 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat1;
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_370 * x_371) + x_373);
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_375, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat4 = inverseSqrt(x_379);
  let x_381 : vec4<f32> = u_xlat1;
  let x_384 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat1 = ((x_381 * x_384) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_389);
  let x_391 : vec4<f32> = u_xlat2;
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_391 * x_392);
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_394, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_397 : vec4<f32> = u_xlat1;
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_397 * x_398);
  let x_400 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_406 : vec3<f32> = (vec3<f32>(x_400.y, x_400.y, x_400.y) * vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_412 : vec4<f32> = u_xlat1;
  let x_415 : vec4<f32> = u_xlat2;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.x, x_412.x, x_412.x)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_421 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_423 : vec4<f32> = u_xlat1;
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.z, x_423.z, x_423.z)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_434 : vec4<f32> = u_xlat1;
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.w, x_434.w, x_434.w)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : f32 = u_xlat3.y;
  let x_445 : f32 = u_xlat3.y;
  u_xlat19 = (x_443 * x_445);
  let x_448 : f32 = u_xlat3.x;
  let x_450 : f32 = u_xlat3.x;
  let x_452 : f32 = u_xlat19;
  u_xlat19 = ((x_448 * x_450) + -(x_452));
  let x_455 : vec3<f32> = u_xlat3;
  let x_457 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_455.y, x_455.z, x_455.z, x_455.x) * vec4<f32>(x_457.x, x_457.y, x_457.z, x_457.z));
  let x_462 : vec4<f32> = x_21.unity_SHBr;
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_462, x_463);
  let x_468 : vec4<f32> = x_21.unity_SHBg;
  let x_469 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_468, x_469);
  let x_474 : vec4<f32> = x_21.unity_SHBb;
  let x_475 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_474, x_475);
  let x_480 : vec4<f32> = x_21.unity_SHC;
  let x_482 : f32 = u_xlat19;
  let x_485 : vec3<f32> = u_xlat3;
  let x_486 : vec3<f32> = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482, x_482, x_482)) + x_485);
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_490 : vec4<f32> = u_xlat1;
  let x_492 : vec4<f32> = u_xlat2;
  let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_499 : f32 = u_xlat0.y;
  let x_501 : f32 = x_21.x_ProjectionParams.x;
  u_xlat0.y = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = (vec3<f32>(x_504.x, x_504.w, x_504.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_509 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_508.x, x_509.y, x_508.y, x_508.z);
  let x_512 : vec4<f32> = u_xlat0;
  let x_513 : vec2<f32> = vec2<f32>(x_512.z, x_512.w);
  let x_514 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_514.x, x_514.y, x_513.x, x_513.y);
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec4<f32> = u_xlat1;
  let x_520 : vec2<f32> = (vec2<f32>(x_516.z, x_516.z) + vec2<f32>(x_518.x, x_518.w));
  let x_521 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
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

