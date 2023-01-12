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

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

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
  let x_161 : f32 = u_xlat2.z;
  vs_TEXCOORD5 = x_161;
  let x_163 : vec4<f32> = u_xlat2;
  let x_164 : vec2<f32> = vec2<f32>(x_163.z, x_163.w);
  let x_165 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_165.x, x_165.y, x_164.x, x_164.y);
  let x_168 : f32 = u_xlat1.y;
  let x_172 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat18 = (x_168 * x_172);
  let x_175 : f32 = x_20.unity_MatrixV[0i].z;
  let x_177 : f32 = u_xlat1.x;
  let x_179 : f32 = u_xlat18;
  u_xlat18 = ((x_175 * x_177) + x_179);
  let x_182 : f32 = x_20.unity_MatrixV[2i].z;
  let x_184 : f32 = u_xlat1.z;
  let x_186 : f32 = u_xlat18;
  u_xlat18 = ((x_182 * x_184) + x_186);
  let x_189 : f32 = x_20.unity_MatrixV[3i].z;
  let x_192 : f32 = u_xlat1.w;
  let x_194 : f32 = u_xlat18;
  u_xlat18 = ((x_189 * x_192) + x_194);
  let x_198 : f32 = u_xlat18;
  vs_TEXCOORD3.z = -(x_198);
  let x_203 : vec4<f32> = u_xlat1;
  let x_206 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_208 : vec3<f32> = (vec3<f32>(x_203.y, x_203.y, x_203.y) * vec3<f32>(x_206.x, x_206.y, x_206.w));
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_214 : vec4<f32> = u_xlat1;
  let x_217 : vec4<f32> = u_xlat4;
  let x_219 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.w) * vec3<f32>(x_214.x, x_214.x, x_214.x)) + vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat4;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.w) * vec3<f32>(x_225.z, x_225.z, x_225.z)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_236 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.w) * vec3<f32>(x_236.w, x_236.w, x_236.w)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_245;
  u_xlat4.x = 0.5f;
  u_xlat4.z = 0.5f;
  let x_251 : f32 = x_20.x_ProjectionParams.x;
  u_xlat4.y = x_251;
  let x_253 : vec4<f32> = u_xlat1;
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.w) * vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : f32 = u_xlat1.y;
  u_xlat1.w = (x_268 * 0.5f);
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec2<f32> = (vec2<f32>(x_271.z, x_271.z) + vec2<f32>(x_273.x, x_273.w));
  let x_276 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_278.x, x_278.x, x_278.x, x_278.x)) + x_282);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_284.y, x_284.y, x_284.y, x_284.y)) + x_288);
  let x_290 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_290.z, x_290.z, x_290.z, x_290.z)) + x_294);
  let x_297 : vec3<f32> = u_xlat3;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_297.y, x_297.y, x_297.y, x_297.y) * x_299);
  let x_301 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_301 * x_302);
  let x_304 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_304 * x_305) + x_307);
  let x_309 : vec4<f32> = u_xlat1;
  let x_310 : vec3<f32> = u_xlat3;
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_309 * vec4<f32>(x_310.x, x_310.x, x_310.x, x_310.x)) + x_313);
  let x_315 : vec4<f32> = u_xlat0;
  let x_316 : vec3<f32> = u_xlat3;
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_315 * vec4<f32>(x_316.z, x_316.z, x_316.z, x_316.z)) + x_319);
  let x_321 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = u_xlat0;
  let x_324 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_321 * x_322) + x_324);
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_326, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_330);
  let x_332 : vec4<f32> = u_xlat0;
  let x_335 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_332 * x_335) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_340);
  let x_342 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_342 * x_343);
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_345, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_349 : vec4<f32> = u_xlat0;
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_349 * x_350);
  let x_352 : vec4<f32> = u_xlat0;
  let x_356 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_358 : vec3<f32> = (vec3<f32>(x_352.y, x_352.y, x_352.y) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_364 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.x, x_364.x)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_375 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec3<f32> = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.z, x_375.z, x_375.z)) + vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_386 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.w, x_386.w, x_386.w)) + vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat3.y;
  let x_397 : f32 = u_xlat3.y;
  u_xlat18 = (x_395 * x_397);
  let x_400 : f32 = u_xlat3.x;
  let x_402 : f32 = u_xlat3.x;
  let x_404 : f32 = u_xlat18;
  u_xlat18 = ((x_400 * x_402) + -(x_404));
  let x_407 : vec3<f32> = u_xlat3;
  let x_409 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_407.y, x_407.z, x_407.z, x_407.x) * vec4<f32>(x_409.x, x_409.y, x_409.z, x_409.z));
  let x_414 : vec4<f32> = x_20.unity_SHBr;
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_20.unity_SHBg;
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_20.unity_SHBb;
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_426, x_427);
  let x_432 : vec4<f32> = x_20.unity_SHC;
  let x_434 : f32 = u_xlat18;
  let x_437 : vec3<f32> = u_xlat3;
  let x_438 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434, x_434, x_434)) + x_437);
  let x_439 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_442.x, x_442.y, x_442.z) + vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_448 : f32 = u_xlat2.y;
  u_xlat2.w = (x_448 * 0.5f);
  let x_451 : vec4<f32> = u_xlat2;
  let x_453 : vec4<f32> = u_xlat2;
  let x_455 : vec2<f32> = (vec2<f32>(x_451.z, x_451.z) + vec2<f32>(x_453.x, x_453.w));
  let x_456 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
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
  @location(4)
  vs_TEXCOORD5_1 : f32,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD4);
}

