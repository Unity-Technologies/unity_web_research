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

var<private> vs_TEXCOORD6 : f32;

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

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_101 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_101;
  let x_105 : vec4<f32> = in_TEXCOORD0;
  let x_109 : vec4<f32> = x_17.x_MainTex_ST;
  let x_113 : vec4<f32> = x_17.x_MainTex_ST;
  let x_115 : vec2<f32> = ((vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_109.x, x_109.y)) + vec2<f32>(x_113.z, x_113.w));
  let x_116 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_118 : vec4<f32> = in_TEXCOORD0;
  let x_122 : vec4<f32> = x_17.x_Normal_ST;
  let x_126 : vec4<f32> = x_17.x_Normal_ST;
  let x_128 : vec2<f32> = ((vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_122.x, x_122.y)) + vec2<f32>(x_126.z, x_126.w));
  let x_129 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_129.x, x_129.y, x_128.x, x_128.y);
  let x_134 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_134;
  let x_138 : vec4<f32> = in_TANGENT0;
  let x_141 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_143 : vec3<f32> = (vec3<f32>(x_138.y, x_138.y, x_138.y) * vec3<f32>(x_141.y, x_141.z, x_141.x));
  let x_144 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_149 : vec4<f32> = in_TANGENT0;
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec3<f32> = ((vec3<f32>(x_147.y, x_147.z, x_147.x) * vec3<f32>(x_149.x, x_149.x, x_149.x)) + vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_160 : vec4<f32> = in_TANGENT0;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.y, x_158.z, x_158.x) * vec3<f32>(x_160.z, x_160.z, x_160.z)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_175 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_175);
  let x_178 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = (vec3<f32>(x_178.x, x_178.x, x_178.x) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_186;
  let x_191 : vec3<f32> = in_NORMAL0;
  let x_194 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_191, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : vec3<f32> = in_NORMAL0;
  let x_200 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_198, vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_204 : vec3<f32> = in_NORMAL0;
  let x_206 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_204, vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_217);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_220.x, x_220.x, x_220.x, x_220.x) * vec4<f32>(x_222.x, x_222.y, x_222.z, x_222.z));
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.w, x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat3;
  let x_234 : vec4<f32> = u_xlat2;
  let x_237 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_232.y, x_232.w, x_232.x) * vec3<f32>(x_234.y, x_234.z, x_234.x)) + -(x_237));
  let x_242 : f32 = in_TANGENT0.w;
  let x_246 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_242 * x_246);
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_249.x, x_249.x, x_249.x) * x_251);
  let x_254 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_254;
  let x_257 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_257;
  let x_261 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_261;
  let x_265 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_265;
  let x_268 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_268;
  let x_271 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_271;
  let x_274 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_274;
  let x_277 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_277;
  let x_280 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_280;
  let x_283 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_283;
  let x_287 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_287;
  let x_289 : f32 = u_xlat1.y;
  let x_292 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_289 * x_292);
  let x_296 : f32 = x_17.unity_MatrixV[0i].z;
  let x_298 : f32 = u_xlat1.x;
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_296 * x_298) + x_301);
  let x_305 : f32 = x_17.unity_MatrixV[2i].z;
  let x_307 : f32 = u_xlat1.z;
  let x_310 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_305 * x_307) + x_310);
  let x_314 : f32 = x_17.unity_MatrixV[3i].z;
  let x_316 : f32 = u_xlat1.w;
  let x_319 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_314 * x_316) + x_319);
  let x_325 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_325);
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_334 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_332.x, x_332.y, x_332.w));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_340 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.w) * vec3<f32>(x_340.x, x_340.x, x_340.x)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_349 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_351 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = u_xlat0;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.y, x_349.w) * vec3<f32>(x_351.z, x_351.z, x_351.z)) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_362 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.w) * vec3<f32>(x_362.w, x_362.w, x_362.w)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat0;
  let x_374 : vec2<f32> = (vec2<f32>(x_370.x, x_370.z) * vec2<f32>(0.5f, 0.5f));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_375.y, x_374.y, x_375.w);
  let x_378 : f32 = u_xlat0.y;
  let x_380 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_378 * x_380);
  let x_384 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_384;
  let x_387 : f32 = u_xlat0.x;
  u_xlat1.w = (x_387 * 0.5f);
  let x_390 : vec4<f32> = u_xlat1;
  let x_392 : vec4<f32> = u_xlat1;
  let x_394 : vec2<f32> = (vec2<f32>(x_390.z, x_390.z) + vec2<f32>(x_392.x, x_392.w));
  let x_395 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
  let x_398 : f32 = u_xlat3.y;
  let x_400 : f32 = u_xlat3.y;
  u_xlat0.x = (x_398 * x_400);
  let x_404 : f32 = u_xlat3.x;
  let x_406 : f32 = u_xlat3.x;
  let x_409 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_404 * x_406) + -(x_409));
  let x_413 : vec4<f32> = u_xlat3;
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_413.y, x_413.w, x_413.z, x_413.x) * x_415);
  let x_418 : vec4<f32> = x_17.unity_SHBr;
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_418, x_419);
  let x_423 : vec4<f32> = x_17.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_423, x_424);
  let x_428 : vec4<f32> = x_17.unity_SHBb;
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_428, x_429);
  let x_436 : vec4<f32> = x_17.unity_SHC;
  let x_438 : vec4<f32> = u_xlat0;
  let x_441 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(x_438.x, x_438.x, x_438.x)) + vec3<f32>(x_441.x, x_441.y, x_441.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(6)
  vs_TEXCOORD6_1 : f32,
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
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD5);
}

