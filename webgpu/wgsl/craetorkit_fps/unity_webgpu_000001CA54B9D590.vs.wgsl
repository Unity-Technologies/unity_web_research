type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
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
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat16 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
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
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat1;
  gl_Position = x_95;
  let x_103 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_103;
  let x_105 : vec4<f32> = in_TANGENT0;
  let x_108 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_110 : vec3<f32> = (vec3<f32>(x_105.y, x_105.y, x_105.y) * vec3<f32>(x_108.y, x_108.z, x_108.x));
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_116 : vec4<f32> = in_TANGENT0;
  let x_119 : vec4<f32> = u_xlat1;
  let x_121 : vec3<f32> = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.x, x_116.x, x_116.x)) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_125 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_127 : vec4<f32> = in_TANGENT0;
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = ((vec3<f32>(x_125.y, x_125.z, x_125.x) * vec3<f32>(x_127.z, x_127.z, x_127.z)) + vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_136 : vec4<f32> = u_xlat1;
  let x_138 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_141);
  let x_143 : f32 = u_xlat15;
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_152 : f32 = u_xlat1.z;
  vs_TEXCOORD0.x = x_152;
  let x_158 : f32 = in_TANGENT0.w;
  let x_162 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat15 = (x_158 * x_162);
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_169 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_166, vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_173 : vec3<f32> = in_NORMAL0;
  let x_175 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_173, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_179 : vec3<f32> = in_NORMAL0;
  let x_181 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_179, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat16;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_193, x_193, x_193, x_193) * vec4<f32>(x_195.x, x_195.y, x_195.z, x_195.z));
  let x_199 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat2;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.w, x_201.x, x_201.y));
  let x_204 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = u_xlat3;
  let x_214 : vec3<f32> = ((vec3<f32>(x_206.y, x_206.w, x_206.x) * vec3<f32>(x_208.y, x_208.z, x_208.x)) + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : f32 = u_xlat15;
  let x_219 : vec4<f32> = u_xlat3;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : f32 = u_xlat3.x;
  vs_TEXCOORD0.y = x_225;
  let x_228 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_228;
  let x_231 : f32 = u_xlat2.x;
  vs_TEXCOORD0.z = x_231;
  let x_235 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = x_235;
  let x_239 : f32 = u_xlat1.y;
  vs_TEXCOORD2.x = x_239;
  let x_242 : f32 = u_xlat3.y;
  vs_TEXCOORD1.y = x_242;
  let x_245 : f32 = u_xlat3.z;
  vs_TEXCOORD2.y = x_245;
  let x_248 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_248;
  let x_251 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_251;
  let x_254 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_254;
  let x_257 : f32 = u_xlat2.w;
  vs_TEXCOORD2.z = x_257;
  let x_261 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_261;
  let x_267 : vec2<f32> = in_TEXCOORD0;
  let x_270 : vec4<f32> = x_20.x_MainTex_ST;
  let x_274 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_267 * vec2<f32>(x_270.x, x_270.y)) + vec2<f32>(x_274.z, x_274.w));
  let x_277 : vec4<f32> = u_xlat0;
  let x_281 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_277.x, x_277.x, x_277.x, x_277.x)) + x_281);
  let x_283 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_283.y, x_283.y, x_283.y, x_283.y)) + x_287);
  let x_289 : vec4<f32> = u_xlat0;
  let x_293 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_289.z, x_289.z, x_289.z, x_289.z)) + x_293);
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_296.y, x_296.y, x_296.y, x_296.y) * x_298);
  let x_300 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_300 * x_301);
  let x_303 : vec4<f32> = u_xlat1;
  let x_304 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_303 * x_304) + x_306);
  let x_308 : vec4<f32> = u_xlat1;
  let x_309 : vec4<f32> = u_xlat2;
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_308 * vec4<f32>(x_309.x, x_309.x, x_309.x, x_309.x)) + x_312);
  let x_314 : vec4<f32> = u_xlat0;
  let x_315 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_314 * vec4<f32>(x_315.w, x_315.w, x_315.z, x_315.w)) + x_318);
  let x_320 : vec4<f32> = u_xlat0;
  let x_321 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_320 * x_321) + x_323);
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_325, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_329);
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_331 * x_333) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_338);
  let x_340 : vec4<f32> = u_xlat1;
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_340 * x_341);
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_343, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_347 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_347 * x_348);
  let x_350 : vec4<f32> = u_xlat0;
  let x_354 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_356 : vec3<f32> = (vec3<f32>(x_350.y, x_350.y, x_350.y) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_362 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat1;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.x, x_362.x, x_362.x)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_373 : vec4<f32> = u_xlat0;
  let x_376 : vec4<f32> = u_xlat1;
  let x_378 : vec3<f32> = ((vec3<f32>(x_371.x, x_371.y, x_371.z) * vec3<f32>(x_373.z, x_373.z, x_373.z)) + vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_384 : vec4<f32> = u_xlat0;
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_384.w, x_384.w, x_384.w)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat2.y;
  let x_395 : f32 = u_xlat2.y;
  u_xlat15 = (x_393 * x_395);
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat2.x;
  let x_402 : f32 = u_xlat15;
  u_xlat15 = ((x_398 * x_400) + -(x_402));
  let x_405 : vec4<f32> = u_xlat2;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_405.y, x_405.w, x_405.z, x_405.x) * x_407);
  let x_411 : vec4<f32> = x_20.unity_SHBr;
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_411, x_412);
  let x_417 : vec4<f32> = x_20.unity_SHBg;
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_20.unity_SHBb;
  let x_424 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_20.unity_SHC;
  let x_431 : f32 = u_xlat15;
  let x_434 : vec4<f32> = u_xlat2;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431, x_431, x_431)) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_441 : vec4<f32> = u_xlat0;
  let x_443 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_441.x, x_441.y, x_441.z) + vec3<f32>(x_443.x, x_443.y, x_443.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

