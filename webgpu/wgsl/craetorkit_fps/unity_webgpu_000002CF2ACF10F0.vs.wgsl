struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_49 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.w, x_51.w, x_51.w)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + x_71);
  let x_74 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_74 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_81 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_81 * vec4<f32>(x_82.w, x_82.w, x_82.w, x_82.w)) + x_85);
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = x_93;
  let x_99 : vec4<f32> = in_TEXCOORD0;
  let x_103 : vec4<f32> = x_17.x_MainTex_ST;
  let x_107 : vec4<f32> = x_17.x_MainTex_ST;
  let x_109 : vec2<f32> = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_103.x, x_103.y)) + vec2<f32>(x_107.z, x_107.w));
  let x_110 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_112 : vec4<f32> = in_TEXCOORD0;
  let x_116 : vec4<f32> = x_17.x_Normal_ST;
  let x_120 : vec4<f32> = x_17.x_Normal_ST;
  let x_122 : vec2<f32> = ((vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_116.x, x_116.y)) + vec2<f32>(x_120.z, x_120.w));
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_123.x, x_123.y, x_122.x, x_122.y);
  let x_129 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_129;
  let x_136 : vec4<f32> = in_TANGENT0;
  let x_139 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_136.y, x_136.y, x_136.y) * vec3<f32>(x_139.y, x_139.z, x_139.x));
  let x_143 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_145 : vec4<f32> = in_TANGENT0;
  let x_148 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_143.y, x_143.z, x_143.x) * vec3<f32>(x_145.x, x_145.x, x_145.x)) + x_148);
  let x_151 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_153 : vec4<f32> = in_TANGENT0;
  let x_156 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_151.y, x_151.z, x_151.x) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + x_156);
  let x_158 : vec3<f32> = u_xlat3;
  let x_159 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_158, x_159);
  let x_163 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_163);
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_166.x, x_166.x, x_166.x) * x_168);
  let x_172 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_172;
  let x_177 : vec3<f32> = in_NORMAL0;
  let x_180 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_177, vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_184 : vec3<f32> = in_NORMAL0;
  let x_186 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_184, vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec3<f32> = in_NORMAL0;
  let x_192 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_190, vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_203 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_203);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_206.x, x_206.x, x_206.x, x_206.x) * vec4<f32>(x_208.x, x_208.y, x_208.z, x_208.z));
  let x_212 : vec3<f32> = u_xlat3;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_212 * vec3<f32>(x_213.w, x_213.x, x_213.y));
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec3<f32> = u_xlat3;
  let x_221 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_216.y, x_216.w, x_216.x) * vec3<f32>(x_218.y, x_218.z, x_218.x)) + -(x_221));
  let x_226 : f32 = in_TANGENT0.w;
  let x_230 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_226 * x_230);
  let x_233 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_238 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_238;
  let x_241 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_241;
  let x_245 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_245;
  let x_249 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_249;
  let x_252 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_252;
  let x_255 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_255;
  let x_258 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_258;
  let x_261 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_261;
  let x_264 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_264;
  let x_267 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_267;
  let x_271 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_271;
  let x_273 : f32 = u_xlat1.y;
  let x_276 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_273 * x_276);
  let x_280 : f32 = x_17.unity_MatrixV[0i].z;
  let x_282 : f32 = u_xlat1.x;
  let x_285 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_280 * x_282) + x_285);
  let x_289 : f32 = x_17.unity_MatrixV[2i].z;
  let x_291 : f32 = u_xlat1.z;
  let x_294 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_289 * x_291) + x_294);
  let x_298 : f32 = x_17.unity_MatrixV[3i].z;
  let x_300 : f32 = u_xlat1.w;
  let x_303 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_298 * x_300) + x_303);
  let x_309 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_309);
  let x_313 : vec4<f32> = u_xlat1;
  let x_316 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_318 : vec3<f32> = (vec3<f32>(x_313.y, x_313.y, x_313.y) * vec3<f32>(x_316.x, x_316.y, x_316.w));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_324 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.w) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_335 : vec4<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.w) * vec3<f32>(x_335.z, x_335.z, x_335.z)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_346 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat0;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.w) * vec3<f32>(x_346.w, x_346.w, x_346.w)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_355 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_355;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_361 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.y = x_361;
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat1;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.x, x_372.y, x_372.w));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : vec4<f32> = u_xlat2;
  let x_379 : vec2<f32> = vec2<f32>(x_378.z, x_378.w);
  let x_380 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_380.x, x_380.y, x_379.x, x_379.y);
  let x_383 : f32 = u_xlat0.y;
  u_xlat0.w = (x_383 * 0.5f);
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec2<f32> = (vec2<f32>(x_386.z, x_386.z) + vec2<f32>(x_388.x, x_388.w));
  let x_391 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_394 : f32 = u_xlat4.y;
  let x_396 : f32 = u_xlat4.y;
  u_xlat0.x = (x_394 * x_396);
  let x_400 : f32 = u_xlat4.x;
  let x_402 : f32 = u_xlat4.x;
  let x_405 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_400 * x_402) + -(x_405));
  let x_409 : vec4<f32> = u_xlat4;
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_409.y, x_409.w, x_409.z, x_409.x) * x_411);
  let x_414 : vec4<f32> = x_17.unity_SHBr;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_414, x_415);
  let x_419 : vec4<f32> = x_17.unity_SHBg;
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_419, x_420);
  let x_424 : vec4<f32> = x_17.unity_SHBb;
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_424, x_425);
  let x_432 : vec4<f32> = x_17.unity_SHC;
  let x_434 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = u_xlat3;
  vs_TEXCOORD5 = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.x, x_434.x, x_434.x)) + x_437);
  let x_440 : f32 = u_xlat1.y;
  u_xlat1.w = (x_440 * 0.5f);
  let x_443 : vec4<f32> = u_xlat1;
  let x_445 : vec4<f32> = u_xlat1;
  let x_447 : vec2<f32> = (vec2<f32>(x_443.z, x_443.z) + vec2<f32>(x_445.x, x_445.w));
  let x_448 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_COLOR0_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD7, vs_TEXCOORD5);
}

