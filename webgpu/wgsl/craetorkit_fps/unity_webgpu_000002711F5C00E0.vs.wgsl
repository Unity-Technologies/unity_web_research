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
  var u_xlatb0 : bool;
  var x_106 : vec2<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
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
  u_xlat0.w = 0.0f;
  let x_196 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_196.w, x_196.w, x_196.w, x_196.x);
  let x_199 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_199.w, x_199.w, x_199.w, x_199.y);
  let x_203 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_203;
  let x_207 : vec3<f32> = in_NORMAL0;
  let x_210 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_207, vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec3<f32> = in_NORMAL0;
  let x_217 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_215, vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec3<f32> = in_NORMAL0;
  let x_223 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_221, vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_233);
  let x_235 : f32 = u_xlat15;
  let x_237 : vec4<f32> = u_xlat1;
  let x_239 : vec3<f32> = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = vec3<f32>(x_242.x, x_242.y, x_242.z);
  let x_244 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_251 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_247.x, x_247.x, x_247.x, x_247.x)) + x_251);
  let x_254 : vec4<f32> = u_xlat0;
  let x_258 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_254.y, x_254.y, x_254.y, x_254.y)) + x_258);
  let x_260 : vec4<f32> = u_xlat0;
  let x_264 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_260.z, x_260.z, x_260.z, x_260.z)) + x_264);
  let x_267 : vec4<f32> = u_xlat1;
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_267.y, x_267.y, x_267.y, x_267.y) * x_269);
  let x_271 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_271 * x_272);
  let x_274 : vec4<f32> = u_xlat2;
  let x_275 : vec4<f32> = u_xlat2;
  let x_277 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_274 * x_275) + x_277);
  let x_279 : vec4<f32> = u_xlat2;
  let x_280 : vec4<f32> = u_xlat1;
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_279 * vec4<f32>(x_280.x, x_280.x, x_280.x, x_280.x)) + x_283);
  let x_285 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_285 * vec4<f32>(x_286.z, x_286.z, x_286.z, x_286.z)) + x_289);
  let x_291 : vec4<f32> = u_xlat0;
  let x_292 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_291 * x_292) + x_294);
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_296, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_300);
  let x_302 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_302 * x_305) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_310 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_310);
  let x_312 : vec4<f32> = u_xlat2;
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_312 * x_313);
  let x_315 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_315, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_318 : vec4<f32> = u_xlat0;
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_318 * x_319);
  let x_321 : vec4<f32> = u_xlat0;
  let x_325 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_327 : vec3<f32> = (vec3<f32>(x_321.y, x_321.y, x_321.y) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_333 : vec4<f32> = u_xlat0;
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.x, x_333.x)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_344 : vec4<f32> = u_xlat0;
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.z, x_344.z, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_355 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355.w, x_355.w, x_355.w)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : f32 = u_xlat1.y;
  let x_366 : f32 = u_xlat1.y;
  u_xlat15 = (x_364 * x_366);
  let x_369 : f32 = u_xlat1.x;
  let x_371 : f32 = u_xlat1.x;
  let x_373 : f32 = u_xlat15;
  u_xlat15 = ((x_369 * x_371) + -(x_373));
  let x_376 : vec4<f32> = u_xlat1;
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_376.y, x_376.z, x_376.z, x_376.x) * vec4<f32>(x_378.x, x_378.y, x_378.z, x_378.z));
  let x_383 : vec4<f32> = x_21.unity_SHBr;
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_383, x_384);
  let x_389 : vec4<f32> = x_21.unity_SHBg;
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_389, x_390);
  let x_395 : vec4<f32> = x_21.unity_SHBb;
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_395, x_396);
  let x_401 : vec4<f32> = x_21.unity_SHC;
  let x_403 : f32 = u_xlat15;
  let x_406 : vec4<f32> = u_xlat2;
  let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403, x_403, x_403)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

