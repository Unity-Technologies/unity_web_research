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
  unity_MatrixVP : mat4x4<f32>,
  x_Gradient_ST : vec4<f32>,
}

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(6) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_133 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat5 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.y;
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec2<f32> = (vec2<f32>(x_33.x, x_33.x) * vec2<f32>(x_38.x, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_47 : vec2<f32> = (vec2<f32>(x_43.x, x_43.y) * vec2<f32>(0.02f, 0.02f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_52 : vec4<f32> = in_TEXCOORD0;
  u_xlat10 = (vec2<f32>(x_52.z, x_52.z) + vec2<f32>(-1.0f, -0.300000012f));
  let x_58 : vec2<f32> = u_xlat10;
  u_xlat10 = (x_58 * vec2<f32>(-9.999998093f, 50.000049591f));
  let x_63 : vec2<f32> = u_xlat10;
  u_xlat10 = clamp(x_63, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec2<f32> = u_xlat10;
  let x_75 : vec4<f32> = in_POSITION0;
  let x_77 : vec2<f32> = ((vec2<f32>(x_69.x, x_69.y) * vec2<f32>(x_71.y, x_71.y)) + vec2<f32>(x_75.x, x_75.z));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_78.y, x_77.y, x_78.w);
  let x_81 : f32 = u_xlat10.x;
  let x_85 : f32 = in_TEXCOORD0.y;
  u_xlat0.y = (-(x_81) + x_85);
  let x_89 : f32 = in_TEXCOORD0.x;
  u_xlat0.x = x_89;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_94.x, x_94.y), 0.0f);
  u_xlat0.x = x_96.x;
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec4<f32>(x_99.x, x_99.x, x_99.x, x_99.x) * vec4<f32>(x_101.x, x_101.y, x_101.z, x_101.x));
  let x_105 : f32 = in_POSITION0.y;
  u_xlat1.y = x_105;
  let x_107 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(0.449999988f, 0.449999988f, 0.449999988f)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_120 : f32 = u_xlat0.w;
  let x_124 : f32 = u_xlat0.y;
  u_xlat5 = ((x_120 * 0.25f) + x_124);
  let x_126 : f32 = u_xlat5;
  let x_139 : vec4<f32> = x_133.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_126, x_126, x_126, x_126) * x_139);
  let x_143 : vec4<f32> = x_133.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_151 : vec4<f32> = x_133.unity_ObjectToWorld[2i];
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_151 * vec4<f32>(x_152.z, x_152.z, x_152.z, x_152.z)) + x_155);
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = x_133.unity_ObjectToWorld[3i];
  u_xlat1 = (x_157 + x_160);
  let x_163 : vec4<f32> = x_133.unity_ObjectToWorld[3i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.w, x_165.w, x_165.w)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_178 : vec4<f32> = x_133.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_174.y, x_174.y, x_174.y, x_174.y) * x_178);
  let x_181 : vec4<f32> = x_133.unity_MatrixVP[0i];
  let x_182 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_181 * vec4<f32>(x_182.x, x_182.x, x_182.x, x_182.x)) + x_185);
  let x_188 : vec4<f32> = x_133.unity_MatrixVP[2i];
  let x_189 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_188 * vec4<f32>(x_189.z, x_189.z, x_189.z, x_189.z)) + x_192);
  let x_199 : vec4<f32> = x_133.unity_MatrixVP[3i];
  let x_200 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = u_xlat2;
  gl_Position = ((x_199 * vec4<f32>(x_200.w, x_200.w, x_200.w, x_200.w)) + x_203);
  let x_209 : vec4<f32> = in_TEXCOORD0;
  let x_213 : vec4<f32> = x_133.x_Gradient_ST;
  let x_217 : vec4<f32> = x_133.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_209.x, x_209.y) * vec2<f32>(x_213.x, x_213.y)) + vec2<f32>(x_217.z, x_217.w));
  let x_224 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD3 = x_224;
  let x_225 : vec3<f32> = in_NORMAL0;
  let x_228 : vec4<f32> = x_133.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_225, vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_232 : vec3<f32> = in_NORMAL0;
  let x_234 : vec4<f32> = x_133.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_232, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec3<f32> = in_NORMAL0;
  let x_240 : vec4<f32> = x_133.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_238, vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_250);
  let x_252 : f32 = u_xlat15;
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec3<f32> = (vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_261 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec3<f32>(x_264.x, x_264.y, x_264.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = x_133.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_266.x, x_266.x, x_266.x, x_266.x)) + x_270);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = x_133.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_273.y, x_273.y, x_273.y, x_273.y)) + x_277);
  let x_279 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = x_133.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_279.z, x_279.z, x_279.z, x_279.z)) + x_283);
  let x_286 : vec4<f32> = u_xlat1;
  let x_288 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_286.y, x_286.y, x_286.y, x_286.y) * x_288);
  let x_290 : vec4<f32> = u_xlat3;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_290 * x_291);
  let x_293 : vec4<f32> = u_xlat2;
  let x_294 : vec4<f32> = u_xlat2;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_293 * x_294) + x_296);
  let x_298 : vec4<f32> = u_xlat2;
  let x_299 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_298 * vec4<f32>(x_299.x, x_299.x, x_299.x, x_299.x)) + x_302);
  let x_304 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = u_xlat1;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_304 * vec4<f32>(x_305.z, x_305.z, x_305.z, x_305.z)) + x_308);
  let x_310 : vec4<f32> = u_xlat0;
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_310 * x_311) + x_313);
  let x_315 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_315, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_319);
  let x_321 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = x_133.unity_4LightAtten0;
  u_xlat0 = ((x_321 * x_323) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_327);
  let x_329 : vec4<f32> = u_xlat2;
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_329 * x_330);
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_332, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_335 : vec4<f32> = u_xlat0;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_335 * x_336);
  let x_338 : vec4<f32> = u_xlat0;
  let x_342 : vec4<f32> = x_133.unity_LightColor[1i];
  let x_344 : vec3<f32> = (vec3<f32>(x_338.y, x_338.y, x_338.y) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : vec4<f32> = x_133.unity_LightColor[0i];
  let x_350 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = u_xlat2;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.x, x_350.x, x_350.x)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : vec4<f32> = x_133.unity_LightColor[2i];
  let x_361 : vec4<f32> = u_xlat0;
  let x_364 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.z, x_361.z, x_361.z)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : vec4<f32> = x_133.unity_LightColor[3i];
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.w, x_372.w, x_372.w)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat1.y;
  let x_383 : f32 = u_xlat1.y;
  u_xlat15 = (x_381 * x_383);
  let x_386 : f32 = u_xlat1.x;
  let x_388 : f32 = u_xlat1.x;
  let x_390 : f32 = u_xlat15;
  u_xlat15 = ((x_386 * x_388) + -(x_390));
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_393.y, x_393.z, x_393.z, x_393.x) * vec4<f32>(x_395.x, x_395.y, x_395.z, x_395.z));
  let x_400 : vec4<f32> = x_133.unity_SHBr;
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_133.unity_SHBg;
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_406, x_407);
  let x_412 : vec4<f32> = x_133.unity_SHBb;
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_412, x_413);
  let x_418 : vec4<f32> = x_133.unity_SHC;
  let x_420 : f32 = u_xlat15;
  let x_423 : vec4<f32> = u_xlat2;
  let x_425 : vec3<f32> = ((vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(x_420, x_420, x_420)) + vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_429.x, x_429.y, x_429.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4);
}

