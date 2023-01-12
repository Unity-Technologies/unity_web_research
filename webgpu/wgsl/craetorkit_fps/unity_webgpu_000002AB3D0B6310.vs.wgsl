struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
  @size(12)
  padding_1 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_149 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_43 + x_45);
  let x_48 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_49 : vec4<f32> = in_POSITION0;
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_48 * vec4<f32>(x_49.w, x_49.w, x_49.w, x_49.w)) + x_52);
  let x_55 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_63 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_62 * vec4<f32>(x_63.x, x_63.x, x_63.x, x_63.x)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_70 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_69 * vec4<f32>(x_70.z, x_70.z, x_70.z, x_70.z)) + x_73);
  let x_76 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_76 * vec4<f32>(x_77.w, x_77.w, x_77.w, x_77.w)) + x_80);
  let x_88 : vec4<f32> = u_xlat1;
  gl_Position = x_88;
  let x_94 : f32 = u_xlat1.z;
  let x_97 : f32 = x_18.x_ProjectionParams.y;
  u_xlat1.x = (x_94 / x_97);
  let x_102 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_102) + 1.0f);
  let x_108 : f32 = u_xlat1.x;
  let x_110 : f32 = x_18.x_ProjectionParams.z;
  u_xlat1.x = (x_108 * x_110);
  let x_114 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_114, 0.0f);
  let x_119 : f32 = u_xlat1.x;
  let x_122 : f32 = x_18.unity_FogParams.x;
  u_xlat1.x = (x_119 * x_122);
  let x_126 : f32 = u_xlat1.x;
  let x_128 : f32 = u_xlat1.x;
  u_xlat1.x = (x_126 * -(x_128));
  let x_134 : f32 = u_xlat1.x;
  vs_TEXCOORD1.w = exp2(x_134);
  let x_144 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_144 == 0.0f);
  let x_146 : bool = u_xlatb1;
  if (x_146) {
    let x_154 : vec2<f32> = in_TEXCOORD0;
    x_149 = x_154;
  } else {
    let x_157 : vec2<f32> = in_TEXCOORD1;
    x_149 = x_157;
  }
  let x_158 : vec2<f32> = x_149;
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
  let x_162 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_170 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_172 : vec2<f32> = ((vec2<f32>(x_162.x, x_162.y) * vec2<f32>(x_166.x, x_166.y)) + vec2<f32>(x_170.z, x_170.w));
  let x_173 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_173.x, x_173.y, x_172.x, x_172.y);
  let x_175 : vec2<f32> = in_TEXCOORD0;
  let x_178 : vec4<f32> = x_18.x_MainTex_ST;
  let x_182 : vec4<f32> = x_18.x_MainTex_ST;
  let x_184 : vec2<f32> = ((x_175 * vec2<f32>(x_178.x, x_178.y)) + vec2<f32>(x_182.z, x_182.w));
  let x_185 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_184.x, x_184.y, x_185.z, x_185.w);
  let x_187 : vec4<f32> = in_POSITION0;
  let x_190 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_192 : vec3<f32> = (vec3<f32>(x_187.y, x_187.y, x_187.y) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_198 : vec4<f32> = in_POSITION0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.x, x_198.x, x_198.x)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_209 : vec4<f32> = in_POSITION0;
  let x_212 : vec4<f32> = u_xlat1;
  let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.z, x_209.z, x_209.z)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_220 : vec4<f32> = in_POSITION0;
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.w, x_220.w, x_220.w)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat1;
  let x_232 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_234 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + -(x_232));
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_243);
  let x_245 : f32 = u_xlat16;
  let x_247 : vec4<f32> = u_xlat2;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_256 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_260 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_262 : vec3<f32> = ((-(vec3<f32>(x_252.x, x_252.y, x_252.z)) * vec3<f32>(x_256.w, x_256.w, x_256.w)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_267 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_267.x, x_267.y, x_267.z);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_276 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_276);
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.x, x_279.x) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_288 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_288;
  let x_291 : vec4<f32> = in_TANGENT0;
  let x_294 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_296 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_300 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_302 : vec4<f32> = in_TANGENT0;
  let x_305 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.x, x_302.x)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_313 : vec4<f32> = in_TANGENT0;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.z, x_313.z, x_313.z)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_328 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_328);
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec4<f32> = u_xlat2;
  let x_335 : vec3<f32> = (vec3<f32>(x_331.x, x_331.x, x_331.x) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat2;
  let x_339 : vec3<f32> = vec3<f32>(x_338.x, x_338.y, x_338.z);
  let x_340 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_346 : vec3<f32> = in_NORMAL0;
  let x_349 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_346, vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_353 : vec3<f32> = in_NORMAL0;
  let x_355 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_353, vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : vec3<f32> = in_NORMAL0;
  let x_361 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_359, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec3<f32> = u_xlat3;
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_365, x_366);
  let x_370 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_370);
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_373.x, x_373.x, x_373.x) * x_375);
  let x_378 : vec4<f32> = u_xlat2;
  let x_380 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_378.y, x_378.z, x_378.x) * vec3<f32>(x_380.z, x_380.x, x_380.y));
  let x_383 : vec3<f32> = u_xlat3;
  let x_385 : vec4<f32> = u_xlat2;
  let x_388 : vec3<f32> = u_xlat4;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.y, x_383.z, x_383.x) * vec3<f32>(x_385.z, x_385.x, x_385.y)) + -(x_388));
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : vec3<f32> = u_xlat3;
  let x_395 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_399 : f32 = in_TANGENT0.w;
  let x_402 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_399 * x_402);
  let x_406 : vec4<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.x, x_406.x) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_414;
  let x_417 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_417;
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat1 = (vec4<f32>(x_419.y, x_419.y, x_419.y, x_419.y) * x_423);
  let x_426 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_427 : vec4<f32> = u_xlat0;
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_426 * vec4<f32>(x_427.x, x_427.x, x_427.x, x_427.x)) + x_430);
  let x_433 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_434 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_433 * vec4<f32>(x_434.z, x_434.z, x_434.z, x_434.z)) + x_437);
  let x_442 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_443 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = u_xlat1;
  vs_TEXCOORD6 = ((x_442 * vec4<f32>(x_443.w, x_443.w, x_443.w, x_443.w)) + x_446);
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
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD3);
}

