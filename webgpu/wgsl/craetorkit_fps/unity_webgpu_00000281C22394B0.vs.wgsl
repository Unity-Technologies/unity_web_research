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

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
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
  let x_135 : vec4<f32> = in_TANGENT0;
  let x_138 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_140 : vec3<f32> = (vec3<f32>(x_135.y, x_135.y, x_135.y) * vec3<f32>(x_138.y, x_138.z, x_138.x));
  let x_141 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_146 : vec4<f32> = in_TANGENT0;
  let x_149 : vec4<f32> = u_xlat3;
  let x_151 : vec3<f32> = ((vec3<f32>(x_144.y, x_144.z, x_144.x) * vec3<f32>(x_146.x, x_146.x, x_146.x)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_157 : vec4<f32> = in_TANGENT0;
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.y, x_155.z, x_155.x) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat3;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_172 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_172);
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat3;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.x, x_175.x) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_184;
  let x_189 : vec3<f32> = in_NORMAL0;
  let x_192 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_189, vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec3<f32> = in_NORMAL0;
  let x_198 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_196, vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec3<f32> = in_NORMAL0;
  let x_204 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_202, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_215);
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_218.x, x_218.x, x_218.x, x_218.x) * vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.z));
  let x_225 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.w, x_227.x, x_227.y));
  let x_230 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat3;
  let x_235 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_230.y, x_230.w, x_230.x) * vec3<f32>(x_232.y, x_232.z, x_232.x)) + -(x_235));
  let x_240 : f32 = in_TANGENT0.w;
  let x_244 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_240 * x_244);
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_247.x, x_247.x, x_247.x) * x_249);
  let x_252 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_252;
  let x_255 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_255;
  let x_259 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_259;
  let x_263 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_263;
  let x_266 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_266;
  let x_269 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_269;
  let x_272 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_272;
  let x_275 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_275;
  let x_278 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_278;
  let x_281 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_281;
  let x_285 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_285;
  let x_287 : f32 = u_xlat1.y;
  let x_290 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_287 * x_290);
  let x_294 : f32 = x_17.unity_MatrixV[0i].z;
  let x_296 : f32 = u_xlat1.x;
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_294 * x_296) + x_299);
  let x_303 : f32 = x_17.unity_MatrixV[2i].z;
  let x_305 : f32 = u_xlat1.z;
  let x_308 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_303 * x_305) + x_308);
  let x_312 : f32 = x_17.unity_MatrixV[3i].z;
  let x_314 : f32 = u_xlat1.w;
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_312 * x_314) + x_317);
  let x_323 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_323);
  let x_327 : vec4<f32> = u_xlat1;
  let x_330 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_332 : vec3<f32> = (vec3<f32>(x_327.y, x_327.y, x_327.y) * vec3<f32>(x_330.x, x_330.y, x_330.w));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_336 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_338 : vec4<f32> = u_xlat1;
  let x_341 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.w) * vec3<f32>(x_338.x, x_338.x, x_338.x)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_349 : vec4<f32> = u_xlat1;
  let x_352 : vec4<f32> = u_xlat0;
  let x_354 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.y, x_347.w) * vec3<f32>(x_349.z, x_349.z, x_349.z)) + vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_360 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.w) * vec3<f32>(x_360.w, x_360.w, x_360.w)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_369;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_375 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.y = x_375;
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat1;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.x, x_386.y, x_386.w));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat0.y;
  u_xlat0.w = (x_392 * 0.5f);
  let x_395 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec2<f32> = (vec2<f32>(x_395.z, x_395.z) + vec2<f32>(x_397.x, x_397.w));
  let x_400 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
  let x_403 : f32 = u_xlat4.y;
  let x_405 : f32 = u_xlat4.y;
  u_xlat0.x = (x_403 * x_405);
  let x_409 : f32 = u_xlat4.x;
  let x_411 : f32 = u_xlat4.x;
  let x_414 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_409 * x_411) + -(x_414));
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat3 = (vec4<f32>(x_418.y, x_418.w, x_418.z, x_418.x) * x_420);
  let x_423 : vec4<f32> = x_17.unity_SHBr;
  let x_424 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_423, x_424);
  let x_428 : vec4<f32> = x_17.unity_SHBg;
  let x_429 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_428, x_429);
  let x_433 : vec4<f32> = x_17.unity_SHBb;
  let x_434 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_433, x_434);
  let x_441 : vec4<f32> = x_17.unity_SHC;
  let x_443 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = u_xlat4;
  vs_TEXCOORD5 = ((vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_443.x, x_443.x, x_443.x)) + vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_451;
  let x_453 : vec4<f32> = u_xlat2;
  let x_454 : vec2<f32> = vec2<f32>(x_453.z, x_453.w);
  let x_455 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_455.x, x_455.y, x_454.x, x_454.y);
  let x_458 : f32 = u_xlat1.y;
  u_xlat1.w = (x_458 * 0.5f);
  let x_461 : vec4<f32> = u_xlat1;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec2<f32> = (vec2<f32>(x_461.z, x_461.z) + vec2<f32>(x_463.x, x_463.w));
  let x_466 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
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
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : f32,
  @location(7)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD7);
}

