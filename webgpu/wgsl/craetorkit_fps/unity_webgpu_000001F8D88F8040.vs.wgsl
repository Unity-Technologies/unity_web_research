type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
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
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
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
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_102 : vec3<f32> = in_NORMAL0;
  let x_105 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_102, vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_125 : vec3<f32> = u_xlat3;
  let x_126 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_125, x_126);
  let x_128 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_128);
  let x_130 : f32 = u_xlat18;
  let x_132 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_130, x_130, x_130) * x_132);
  let x_136 : vec3<f32> = u_xlat3;
  vs_TEXCOORD0 = x_136;
  let x_138 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_138.x, x_138.y, x_138.z);
  let x_142 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_142;
  let x_148 : vec2<f32> = in_TEXCOORD0;
  let x_151 : vec4<f32> = x_20.x_MainTex_ST;
  let x_155 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_148 * vec2<f32>(x_151.x, x_151.y)) + vec2<f32>(x_155.z, x_155.w));
  let x_159 : f32 = u_xlat1.y;
  let x_163 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat18 = (x_159 * x_163);
  let x_166 : f32 = x_20.unity_MatrixV[0i].z;
  let x_168 : f32 = u_xlat1.x;
  let x_170 : f32 = u_xlat18;
  u_xlat18 = ((x_166 * x_168) + x_170);
  let x_173 : f32 = x_20.unity_MatrixV[2i].z;
  let x_175 : f32 = u_xlat1.z;
  let x_177 : f32 = u_xlat18;
  u_xlat18 = ((x_173 * x_175) + x_177);
  let x_180 : f32 = x_20.unity_MatrixV[3i].z;
  let x_183 : f32 = u_xlat1.w;
  let x_185 : f32 = u_xlat18;
  u_xlat18 = ((x_180 * x_183) + x_185);
  let x_189 : f32 = u_xlat18;
  vs_TEXCOORD3.z = -(x_189);
  let x_194 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_199 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_197.x, x_197.y, x_197.w));
  let x_200 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_203 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_205 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.w) * vec3<f32>(x_205.x, x_205.x, x_205.x)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_216 : vec4<f32> = u_xlat1;
  let x_219 : vec4<f32> = u_xlat4;
  let x_221 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.w) * vec3<f32>(x_216.z, x_216.z, x_216.z)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_227 : vec4<f32> = u_xlat1;
  let x_230 : vec4<f32> = u_xlat1;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.w) * vec3<f32>(x_227.w, x_227.w, x_227.w)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_236;
  u_xlat4.x = 0.5f;
  u_xlat4.z = 0.5f;
  let x_242 : f32 = x_20.x_ProjectionParams.x;
  u_xlat4.y = x_242;
  let x_244 : vec4<f32> = u_xlat1;
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.w) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = u_xlat2;
  let x_260 : vec2<f32> = vec2<f32>(x_259.z, x_259.w);
  let x_261 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_261.x, x_261.y, x_260.x, x_260.y);
  let x_264 : f32 = u_xlat1.y;
  u_xlat1.w = (x_264 * 0.5f);
  let x_267 : vec4<f32> = u_xlat1;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec2<f32> = (vec2<f32>(x_267.z, x_267.z) + vec2<f32>(x_269.x, x_269.w));
  let x_272 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_274.x, x_274.x, x_274.x, x_274.x)) + x_278);
  let x_280 : vec4<f32> = u_xlat0;
  let x_284 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_280.y, x_280.y, x_280.y, x_280.y)) + x_284);
  let x_286 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_286.z, x_286.z, x_286.z, x_286.z)) + x_290);
  let x_293 : vec3<f32> = u_xlat3;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_293.y, x_293.y, x_293.y, x_293.y) * x_295);
  let x_297 : vec4<f32> = u_xlat2;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_297 * x_298);
  let x_300 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_300 * x_301) + x_303);
  let x_305 : vec4<f32> = u_xlat1;
  let x_306 : vec3<f32> = u_xlat3;
  let x_309 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_305 * vec4<f32>(x_306.x, x_306.x, x_306.x, x_306.x)) + x_309);
  let x_311 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = u_xlat3;
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_311 * vec4<f32>(x_312.z, x_312.z, x_312.z, x_312.z)) + x_315);
  let x_317 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_317 * x_318) + x_320);
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_322, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_326);
  let x_328 : vec4<f32> = u_xlat0;
  let x_331 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_328 * x_331) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_336);
  let x_338 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_338 * x_339);
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_341, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_345 : vec4<f32> = u_xlat0;
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_345 * x_346);
  let x_348 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_354 : vec3<f32> = (vec3<f32>(x_348.y, x_348.y, x_348.y) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_360 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.x, x_360.x)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_371 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.z, x_371.z, x_371.z)) + vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_382 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.w, x_382.w, x_382.w)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : f32 = u_xlat3.y;
  let x_393 : f32 = u_xlat3.y;
  u_xlat18 = (x_391 * x_393);
  let x_396 : f32 = u_xlat3.x;
  let x_398 : f32 = u_xlat3.x;
  let x_400 : f32 = u_xlat18;
  u_xlat18 = ((x_396 * x_398) + -(x_400));
  let x_403 : vec3<f32> = u_xlat3;
  let x_405 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_403.y, x_403.z, x_403.z, x_403.x) * vec4<f32>(x_405.x, x_405.y, x_405.z, x_405.z));
  let x_410 : vec4<f32> = x_20.unity_SHBr;
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_20.unity_SHBg;
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_20.unity_SHBb;
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_422, x_423);
  let x_428 : vec4<f32> = x_20.unity_SHC;
  let x_430 : f32 = u_xlat18;
  let x_433 : vec4<f32> = u_xlat2;
  let x_435 : vec3<f32> = ((vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430, x_430, x_430)) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : vec4<f32> = u_xlat0;
  let x_441 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_439.x, x_439.y, x_439.z) + vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_445 : f32 = u_xlat4.y;
  u_xlat4.w = (x_445 * 0.5f);
  let x_448 : vec4<f32> = u_xlat4;
  let x_450 : vec4<f32> = u_xlat4;
  let x_452 : vec2<f32> = (vec2<f32>(x_448.z, x_448.z) + vec2<f32>(x_450.x, x_450.w));
  let x_453 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4);
}

