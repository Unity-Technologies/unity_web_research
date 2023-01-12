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
  u_xlat1.w = 0.0f;
  let x_193 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_193.w, x_193.w, x_193.w, x_193.x);
  let x_196 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec4<f32>(x_196.w, x_196.w, x_196.w, x_196.y);
  let x_201 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_201;
  let x_206 : vec3<f32> = in_NORMAL0;
  let x_209 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_206, vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_214 : vec3<f32> = in_NORMAL0;
  let x_216 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_214, vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_220 : vec3<f32> = in_NORMAL0;
  let x_222 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_220, vec3<f32>(x_222.x, x_222.y, x_222.z));
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
  let x_241 : vec4<f32> = u_xlat2;
  let x_242 : vec3<f32> = vec3<f32>(x_241.x, x_241.y, x_241.z);
  let x_243 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : vec4<f32> = u_xlat1;
  let x_250 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_246.x, x_246.x, x_246.x, x_246.x)) + x_250);
  let x_253 : vec4<f32> = u_xlat1;
  let x_257 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_253.y, x_253.y, x_253.y, x_253.y)) + x_257);
  let x_259 : vec4<f32> = u_xlat1;
  let x_264 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_259.z, x_259.z, x_259.z, x_259.z)) + x_264);
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_267.y, x_267.y, x_267.y, x_267.y) * x_269);
  let x_271 : vec4<f32> = u_xlat4;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_271 * x_272);
  let x_274 : vec4<f32> = u_xlat3;
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_274 * x_275) + x_277);
  let x_279 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat2;
  let x_283 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_279 * vec4<f32>(x_280.x, x_280.x, x_280.x, x_280.x)) + x_283);
  let x_285 : vec4<f32> = u_xlat1;
  let x_286 : vec4<f32> = u_xlat2;
  let x_289 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_285 * vec4<f32>(x_286.z, x_286.z, x_286.z, x_286.z)) + x_289);
  let x_291 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = u_xlat1;
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_291 * x_292) + x_294);
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_296, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat4 = inverseSqrt(x_300);
  let x_302 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat1 = ((x_302 * x_305) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_310);
  let x_312 : vec4<f32> = u_xlat3;
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_312 * x_313);
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_315, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_318 : vec4<f32> = u_xlat1;
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_318 * x_319);
  let x_321 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_327 : vec3<f32> = (vec3<f32>(x_321.y, x_321.y, x_321.y) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_333 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.x, x_333.x)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_344 : vec4<f32> = u_xlat1;
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.z, x_344.z, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_355 : vec4<f32> = u_xlat1;
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355.w, x_355.w, x_355.w)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : f32 = u_xlat2.y;
  let x_366 : f32 = u_xlat2.y;
  u_xlat19 = (x_364 * x_366);
  let x_369 : f32 = u_xlat2.x;
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat19;
  u_xlat19 = ((x_369 * x_371) + -(x_373));
  let x_376 : vec4<f32> = u_xlat2;
  let x_378 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_376.y, x_376.z, x_376.z, x_376.x) * vec4<f32>(x_378.x, x_378.y, x_378.z, x_378.z));
  let x_383 : vec4<f32> = x_21.unity_SHBr;
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_383, x_384);
  let x_389 : vec4<f32> = x_21.unity_SHBg;
  let x_390 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_389, x_390);
  let x_395 : vec4<f32> = x_21.unity_SHBb;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_395, x_396);
  let x_401 : vec4<f32> = x_21.unity_SHC;
  let x_403 : f32 = u_xlat19;
  let x_406 : vec4<f32> = u_xlat3;
  let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403, x_403, x_403)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = u_xlat2;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_421 : f32 = u_xlat0.y;
  let x_423 : f32 = x_21.x_ProjectionParams.x;
  u_xlat0.y = (x_421 * x_423);
  let x_426 : vec4<f32> = u_xlat0;
  let x_430 : vec3<f32> = (vec3<f32>(x_426.x, x_426.w, x_426.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_430.x, x_431.y, x_430.y, x_430.z);
  let x_434 : vec4<f32> = u_xlat0;
  let x_435 : vec2<f32> = vec2<f32>(x_434.z, x_434.w);
  let x_436 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_436.x, x_436.y, x_435.x, x_435.y);
  let x_438 : vec4<f32> = u_xlat1;
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec2<f32> = (vec2<f32>(x_438.z, x_438.z) + vec2<f32>(x_440.x, x_440.w));
  let x_443 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
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

