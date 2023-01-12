struct VGlobals {
  x_ProjectionParams : vec4<f32>,
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

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_50 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.w, x_52.w, x_52.w)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat1;
  let x_62 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_62);
  let x_65 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_66 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_65 * vec4<f32>(x_66.x, x_66.x, x_66.x, x_66.x)) + x_69);
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_73 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_72 * vec4<f32>(x_73.z, x_73.z, x_73.z, x_73.z)) + x_76);
  let x_79 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_80 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_79 * vec4<f32>(x_80.w, x_80.w, x_80.w, x_80.w)) + x_83);
  let x_91 : vec4<f32> = u_xlat0;
  gl_Position = x_91;
  let x_97 : vec4<f32> = in_TEXCOORD0;
  let x_101 : vec4<f32> = x_17.x_MainTex_ST;
  let x_105 : vec4<f32> = x_17.x_MainTex_ST;
  let x_107 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.y)) + vec2<f32>(x_105.z, x_105.w));
  let x_108 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
  let x_110 : vec4<f32> = in_TEXCOORD0;
  let x_114 : vec4<f32> = x_17.x_Normal_ST;
  let x_118 : vec4<f32> = x_17.x_Normal_ST;
  let x_120 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_121.x, x_121.y, x_120.x, x_120.y);
  let x_126 : vec3<f32> = in_NORMAL0;
  let x_128 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_126, vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec3<f32> = in_NORMAL0;
  let x_135 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_133, vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_140 : vec3<f32> = in_NORMAL0;
  let x_142 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_140, vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_148 : vec4<f32> = u_xlat2;
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_148.x, x_148.y, x_148.z), vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_153);
  let x_155 : f32 = u_xlat17;
  let x_157 : vec4<f32> = u_xlat2;
  let x_159 : vec3<f32> = (vec3<f32>(x_155, x_155, x_155) * vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_165 : vec4<f32> = in_TANGENT0;
  let x_168 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_165.y, x_165.y, x_165.y) * vec3<f32>(x_168.y, x_168.z, x_168.x));
  let x_172 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_174 : vec4<f32> = in_TANGENT0;
  let x_177 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_172.y, x_172.z, x_172.x) * vec3<f32>(x_174.x, x_174.x, x_174.x)) + x_177);
  let x_180 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_182 : vec4<f32> = in_TANGENT0;
  let x_185 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_180.y, x_180.z, x_180.x) * vec3<f32>(x_182.z, x_182.z, x_182.z)) + x_185);
  let x_187 : vec3<f32> = u_xlat3;
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(x_187, x_188);
  let x_190 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_190);
  let x_192 : f32 = u_xlat17;
  let x_194 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_192, x_192, x_192) * x_194);
  let x_197 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_197.x, x_197.y, x_197.z) * x_199);
  let x_201 : vec4<f32> = u_xlat2;
  let x_203 : vec3<f32> = u_xlat3;
  let x_206 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_201.z, x_201.x, x_201.y) * vec3<f32>(x_203.y, x_203.z, x_203.x)) + -(x_206));
  let x_212 : f32 = in_TANGENT0.w;
  let x_215 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat17 = (x_212 * x_215);
  let x_217 : f32 = u_xlat17;
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_217, x_217, x_217) * x_219);
  let x_223 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_223;
  let x_227 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_227;
  let x_230 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_230;
  let x_234 : f32 = u_xlat0.z;
  vs_TEXCOORD8 = x_234;
  let x_237 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_237;
  let x_241 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_241;
  let x_244 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_244;
  let x_247 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_247;
  let x_250 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_250;
  let x_253 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_253;
  let x_257 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_257;
  let x_259 : f32 = u_xlat1.y;
  let x_262 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2.x = (x_259 * x_262);
  let x_266 : f32 = x_17.unity_MatrixV[0i].z;
  let x_268 : f32 = u_xlat1.x;
  let x_271 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_266 * x_268) + x_271);
  let x_275 : f32 = x_17.unity_MatrixV[2i].z;
  let x_277 : f32 = u_xlat1.z;
  let x_280 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_275 * x_277) + x_280);
  let x_284 : f32 = x_17.unity_MatrixV[3i].z;
  let x_286 : f32 = u_xlat1.w;
  let x_289 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_284 * x_286) + x_289);
  let x_295 : f32 = u_xlat2.x;
  vs_TEXCOORD5.z = -(x_295);
  let x_299 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_304 : vec3<f32> = (vec3<f32>(x_299.y, x_299.y, x_299.y) * vec3<f32>(x_302.x, x_302.y, x_302.w));
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_310 : vec4<f32> = u_xlat1;
  let x_313 : vec4<f32> = u_xlat2;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.w) * vec3<f32>(x_310.x, x_310.x, x_310.x)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_321 : vec4<f32> = u_xlat1;
  let x_324 : vec4<f32> = u_xlat2;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.w) * vec3<f32>(x_321.z, x_321.z, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_332 : vec4<f32> = u_xlat1;
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.w) * vec3<f32>(x_332.w, x_332.w, x_332.w)) + vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : f32 = u_xlat1.z;
  vs_TEXCOORD5.w = x_341;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_347 : f32 = x_17.x_ProjectionParams.x;
  u_xlat2.y = x_347;
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat2;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat2;
  let x_360 : vec3<f32> = (vec3<f32>(x_356.x, x_356.y, x_356.w) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec4<f32> = u_xlat0;
  let x_365 : vec2<f32> = vec2<f32>(x_364.z, x_364.w);
  let x_366 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_366.x, x_366.y, x_365.x, x_365.y);
  let x_369 : f32 = u_xlat1.y;
  u_xlat1.w = (x_369 * 0.5f);
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec2<f32> = (vec2<f32>(x_372.z, x_372.z) + vec2<f32>(x_374.x, x_374.w));
  let x_377 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_380 : f32 = u_xlat2.y;
  u_xlat2.w = (x_380 * 0.5f);
  let x_383 : vec4<f32> = u_xlat2;
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec2<f32> = (vec2<f32>(x_383.z, x_383.z) + vec2<f32>(x_385.x, x_385.w));
  let x_388 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
  return;
}

struct main_out {
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD8_1 : f32,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(6)
  vs_COLOR0_1 : vec4<f32>,
  @location(7)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD8, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD7);
}

