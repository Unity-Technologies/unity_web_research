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

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

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
  var u_xlat3 : vec4<f32>;
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
  u_xlat1.w = 0.0f;
  let x_196 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_196.w, x_196.w, x_196.w, x_196.x);
  let x_199 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec4<f32>(x_199.w, x_199.w, x_199.w, x_199.y);
  let x_203 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_203;
  let x_208 : vec3<f32> = in_NORMAL0;
  let x_211 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_208, vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec3<f32> = in_NORMAL0;
  let x_218 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_216, vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_222 : vec3<f32> = in_NORMAL0;
  let x_224 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_222, vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_234);
  let x_236 : f32 = u_xlat19;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat2;
  let x_244 : vec3<f32> = vec3<f32>(x_243.x, x_243.y, x_243.z);
  let x_245 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_248.x, x_248.x, x_248.x, x_248.x)) + x_252);
  let x_255 : vec4<f32> = u_xlat1;
  let x_259 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_255.y, x_255.y, x_255.y, x_255.y)) + x_259);
  let x_261 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_261.z, x_261.z, x_261.z, x_261.z)) + x_266);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_269.y, x_269.y, x_269.y, x_269.y) * x_271);
  let x_273 : vec4<f32> = u_xlat4;
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_273 * x_274);
  let x_276 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_276 * x_277) + x_279);
  let x_281 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = u_xlat2;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_281 * vec4<f32>(x_282.x, x_282.x, x_282.x, x_282.x)) + x_285);
  let x_287 : vec4<f32> = u_xlat1;
  let x_288 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_287 * vec4<f32>(x_288.z, x_288.z, x_288.z, x_288.z)) + x_291);
  let x_293 : vec4<f32> = u_xlat1;
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_293 * x_294) + x_296);
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_298, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat4 = inverseSqrt(x_302);
  let x_304 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat1 = ((x_304 * x_307) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_312);
  let x_314 : vec4<f32> = u_xlat3;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_314 * x_315);
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_317, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_320 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_320 * x_321);
  let x_323 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_329 : vec3<f32> = (vec3<f32>(x_323.y, x_323.y, x_323.y) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_335 : vec4<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.x, x_335.x)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_346 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat3;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.z, x_346.z, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_355 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_357 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.w, x_357.w, x_357.w)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = u_xlat2.y;
  let x_368 : f32 = u_xlat2.y;
  u_xlat19 = (x_366 * x_368);
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat2.x;
  let x_375 : f32 = u_xlat19;
  u_xlat19 = ((x_371 * x_373) + -(x_375));
  let x_378 : vec4<f32> = u_xlat2;
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_378.y, x_378.z, x_378.z, x_378.x) * vec4<f32>(x_380.x, x_380.y, x_380.z, x_380.z));
  let x_385 : vec4<f32> = x_21.unity_SHBr;
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_385, x_386);
  let x_391 : vec4<f32> = x_21.unity_SHBg;
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_391, x_392);
  let x_397 : vec4<f32> = x_21.unity_SHBb;
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_397, x_398);
  let x_403 : vec4<f32> = x_21.unity_SHC;
  let x_405 : f32 = u_xlat19;
  let x_408 : vec4<f32> = u_xlat3;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405, x_405, x_405)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec4<f32> = u_xlat2;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_423 : f32 = u_xlat0.y;
  let x_425 : f32 = x_21.x_ProjectionParams.x;
  u_xlat0.y = (x_423 * x_425);
  let x_428 : vec4<f32> = u_xlat0;
  let x_432 : vec3<f32> = (vec3<f32>(x_428.x, x_428.w, x_428.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_432.x, x_433.y, x_432.y, x_432.z);
  let x_436 : vec4<f32> = u_xlat0;
  let x_437 : vec2<f32> = vec2<f32>(x_436.z, x_436.w);
  let x_438 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_438.x, x_438.y, x_437.x, x_437.y);
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec4<f32> = u_xlat1;
  let x_444 : vec2<f32> = (vec2<f32>(x_440.z, x_440.z) + vec2<f32>(x_442.x, x_442.w));
  let x_445 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7);
}

