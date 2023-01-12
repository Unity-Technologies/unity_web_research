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
  let x_234 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_234;
  let x_238 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_238;
  let x_241 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_241;
  let x_244 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_244;
  let x_247 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_247;
  let x_250 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_250;
  let x_254 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_254;
  let x_256 : f32 = u_xlat1.y;
  let x_259 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2.x = (x_256 * x_259);
  let x_263 : f32 = x_17.unity_MatrixV[0i].z;
  let x_265 : f32 = u_xlat1.x;
  let x_268 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_263 * x_265) + x_268);
  let x_272 : f32 = x_17.unity_MatrixV[2i].z;
  let x_274 : f32 = u_xlat1.z;
  let x_277 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_272 * x_274) + x_277);
  let x_281 : f32 = x_17.unity_MatrixV[3i].z;
  let x_283 : f32 = u_xlat1.w;
  let x_286 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_281 * x_283) + x_286);
  let x_292 : f32 = u_xlat2.x;
  vs_TEXCOORD5.z = -(x_292);
  let x_296 : vec4<f32> = u_xlat1;
  let x_299 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_301 : vec3<f32> = (vec3<f32>(x_296.y, x_296.y, x_296.y) * vec3<f32>(x_299.x, x_299.y, x_299.w));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.w) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_318 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.w) * vec3<f32>(x_318.z, x_318.z, x_318.z)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.w) * vec3<f32>(x_329.w, x_329.w, x_329.w)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = u_xlat1.z;
  vs_TEXCOORD5.w = x_338;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_344 : f32 = x_17.x_ProjectionParams.x;
  u_xlat2.y = x_344;
  let x_346 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat2;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.w) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec4<f32> = u_xlat0;
  let x_362 : vec2<f32> = vec2<f32>(x_361.z, x_361.w);
  let x_363 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_363.x, x_363.y, x_362.x, x_362.y);
  let x_366 : f32 = u_xlat1.y;
  u_xlat1.w = (x_366 * 0.5f);
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat1;
  let x_373 : vec2<f32> = (vec2<f32>(x_369.z, x_369.z) + vec2<f32>(x_371.x, x_371.w));
  let x_374 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
  let x_377 : f32 = u_xlat2.y;
  u_xlat2.w = (x_377 * 0.5f);
  let x_380 : vec4<f32> = u_xlat2;
  let x_382 : vec4<f32> = u_xlat2;
  let x_384 : vec2<f32> = (vec2<f32>(x_380.z, x_380.z) + vec2<f32>(x_382.x, x_382.w));
  let x_385 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
  return;
}

struct main_out {
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_COLOR0_1 : vec4<f32>,
  @location(6)
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
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD7);
}

