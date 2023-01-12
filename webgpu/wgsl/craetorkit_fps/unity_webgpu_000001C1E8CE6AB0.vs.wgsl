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

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_108 : vec4<f32> = in_TEXCOORD0;
  let x_112 : vec4<f32> = x_20.x_MainTex_ST;
  let x_116 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_120 : vec4<f32> = in_TANGENT0;
  let x_123 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_125 : vec3<f32> = (vec3<f32>(x_120.y, x_120.y, x_120.y) * vec3<f32>(x_123.y, x_123.z, x_123.x));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_131 : vec4<f32> = in_TANGENT0;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = ((vec3<f32>(x_129.y, x_129.z, x_129.x) * vec3<f32>(x_131.x, x_131.x, x_131.x)) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_142 : vec4<f32> = in_TANGENT0;
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.y, x_140.z, x_140.x) * vec3<f32>(x_142.z, x_142.z, x_142.z)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_151.x, x_151.y, x_151.z), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat15;
  let x_160 : vec4<f32> = u_xlat1;
  let x_162 : vec3<f32> = (vec3<f32>(x_158, x_158, x_158) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_167 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_167;
  let x_173 : f32 = in_TANGENT0.w;
  let x_177 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat15 = (x_173 * x_177);
  let x_181 : vec3<f32> = in_NORMAL0;
  let x_184 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_181, vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec3<f32> = in_NORMAL0;
  let x_190 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_188, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec3<f32> = in_NORMAL0;
  let x_196 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_194, vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_201 : vec4<f32> = u_xlat2;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_206);
  let x_208 : f32 = u_xlat16;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_208, x_208, x_208, x_208) * vec4<f32>(x_210.x, x_210.y, x_210.z, x_210.z));
  let x_214 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat2;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.w, x_216.x, x_216.y));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat3;
  let x_229 : vec3<f32> = ((vec3<f32>(x_221.y, x_221.w, x_221.x) * vec3<f32>(x_223.y, x_223.z, x_223.x)) + -(vec3<f32>(x_226.x, x_226.y, x_226.z)));
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : f32 = u_xlat15;
  let x_234 : vec4<f32> = u_xlat3;
  let x_236 : vec3<f32> = (vec3<f32>(x_232, x_232, x_232) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_240;
  let x_243 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_243;
  let x_246 : f32 = u_xlat2.x;
  vs_TEXCOORD1.z = x_246;
  let x_250 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_250;
  let x_254 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_254;
  let x_257 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_257;
  let x_260 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_260;
  let x_263 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_263;
  let x_266 : f32 = u_xlat2.y;
  vs_TEXCOORD2.z = x_266;
  let x_269 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_269;
  let x_272 : f32 = u_xlat2.w;
  vs_TEXCOORD3.z = x_272;
  let x_274 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_274.x, x_274.x, x_274.x, x_274.x)) + x_278);
  let x_280 : vec4<f32> = u_xlat0;
  let x_284 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_280.y, x_280.y, x_280.y, x_280.y)) + x_284);
  let x_286 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_286.z, x_286.z, x_286.z, x_286.z)) + x_290);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_293.y, x_293.y, x_293.y, x_293.y) * x_295);
  let x_297 : vec4<f32> = u_xlat3;
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_297 * x_298);
  let x_300 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_300 * x_301) + x_303);
  let x_305 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_305 * vec4<f32>(x_306.x, x_306.x, x_306.x, x_306.x)) + x_309);
  let x_311 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat2;
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_311 * vec4<f32>(x_312.w, x_312.w, x_312.z, x_312.w)) + x_315);
  let x_317 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_317 * x_318) + x_320);
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_322, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_326);
  let x_328 : vec4<f32> = u_xlat0;
  let x_330 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_328 * x_330) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_335);
  let x_337 : vec4<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_337 * x_338);
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_340, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_344 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_344 * x_345);
  let x_347 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_353 : vec3<f32> = (vec3<f32>(x_347.y, x_347.y, x_347.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_359 : vec4<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.x, x_359.x)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_370 : vec4<f32> = u_xlat0;
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.z, x_370.z, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_381 : vec4<f32> = u_xlat0;
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.w, x_381.w, x_381.w)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = u_xlat2.y;
  let x_392 : f32 = u_xlat2.y;
  u_xlat15 = (x_390 * x_392);
  let x_395 : f32 = u_xlat2.x;
  let x_397 : f32 = u_xlat2.x;
  let x_399 : f32 = u_xlat15;
  u_xlat15 = ((x_395 * x_397) + -(x_399));
  let x_402 : vec4<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_402.y, x_402.w, x_402.z, x_402.x) * x_404);
  let x_408 : vec4<f32> = x_20.unity_SHBr;
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_408, x_409);
  let x_414 : vec4<f32> = x_20.unity_SHBg;
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_20.unity_SHBb;
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_20.unity_SHC;
  let x_428 : f32 = u_xlat15;
  let x_431 : vec4<f32> = u_xlat2;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(x_428, x_428, x_428)) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_438.x, x_438.y, x_438.z) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

