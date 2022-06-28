struct VGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Cutoff : f32,
  x_DisplaceAmount : f32,
  @size(8)
  padding : u32,
  x_Noise_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_Gradient : texture_2d<f32>;

@group(0) @binding(4) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

@group(0) @binding(5) var<uniform> x_43 : VGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(3) var sampler_Noise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_310 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.x;
  let x_33 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_33) + 1.0f);
  let x_39 : f32 = u_xlat0.x;
  let x_48 : f32 = x_43.x_Cutoff;
  u_xlat0.x = (x_39 + -(x_48));
  let x_53 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * -3.333333254f);
  let x_58 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_58, 0.0f, 1.0f);
  let x_65 : f32 = u_xlat0.x;
  u_xlat4.x = ((x_65 * -2.0f) + 3.0f);
  let x_72 : f32 = u_xlat0.x;
  let x_74 : f32 = u_xlat0.x;
  u_xlat0.x = (x_72 * x_74);
  let x_78 : f32 = u_xlat0.x;
  let x_80 : f32 = u_xlat4.x;
  u_xlat0.x = (x_78 * x_80);
  let x_84 : vec4<f32> = in_POSITION0;
  let x_90 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_92 : vec2<f32> = (vec2<f32>(x_84.y, x_84.y) * vec2<f32>(x_90.x, x_90.y));
  let x_93 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_92.x, x_92.y, x_93.z);
  let x_97 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_99 : vec4<f32> = in_POSITION0;
  let x_102 : vec3<f32> = u_xlat4;
  let x_104 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_99.x, x_99.x)) + vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_104.x, x_104.y, x_105.z);
  let x_110 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_112 : vec4<f32> = in_POSITION0;
  let x_115 : vec3<f32> = u_xlat4;
  let x_117 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_112.z, x_112.z)) + vec2<f32>(x_115.x, x_115.y));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_117.x, x_117.y, x_118.w);
  let x_121 : f32 = x_43.x_Time.x;
  let x_126 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_121 * 30.0f) + x_126);
  let x_129 : vec4<f32> = u_xlat1;
  let x_133 : vec2<f32> = (vec2<f32>(x_129.x, x_129.z) * vec2<f32>(0.5f, 0.5f));
  let x_134 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_133.x, x_133.y, x_134.z);
  let x_141 : vec3<f32> = u_xlat4;
  let x_143 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, vec2<f32>(x_141.x, x_141.y), 0.0f);
  u_xlat4 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  let x_145 : vec3<f32> = u_xlat4;
  let x_148 : vec3<f32> = in_NORMAL0;
  u_xlat4 = (x_145 * x_148);
  let x_150 : vec4<f32> = u_xlat0;
  let x_152 : vec3<f32> = u_xlat4;
  let x_153 : vec3<f32> = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : f32 = x_43.x_Cutoff;
  let x_161 : f32 = x_43.x_Cutoff;
  let x_163 : f32 = x_43.x_Cutoff;
  let x_164 : vec3<f32> = vec3<f32>(x_159, x_161, x_163);
  let x_169 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat0;
  let x_176 : f32 = x_43.x_DisplaceAmount;
  let x_178 : f32 = x_43.x_DisplaceAmount;
  let x_180 : f32 = x_43.x_DisplaceAmount;
  let x_181 : vec3<f32> = vec3<f32>(x_176, x_178, x_180);
  let x_187 : vec4<f32> = in_POSITION0;
  let x_189 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_181.x, x_181.y, x_181.z)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_192.y, x_192.y, x_192.y, x_192.y) * x_195);
  let x_198 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_199 : vec4<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_198 * vec4<f32>(x_199.x, x_199.x, x_199.x, x_199.x)) + x_202);
  let x_205 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_206 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_205 * vec4<f32>(x_206.z, x_206.z, x_206.z, x_206.z)) + x_209);
  let x_212 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_213 : vec4<f32> = in_POSITION0;
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_212 * vec4<f32>(x_213.w, x_213.w, x_213.w, x_213.w)) + x_216);
  let x_219 : vec4<f32> = u_xlat1;
  let x_223 : vec4<f32> = x_43.x_WorldSpaceLightPos0;
  let x_227 : vec4<f32> = x_43.x_WorldSpaceLightPos0;
  let x_229 : vec3<f32> = ((-(vec3<f32>(x_219.x, x_219.y, x_219.z)) * vec3<f32>(x_223.w, x_223.w, x_223.w)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_238);
  let x_240 : f32 = u_xlat12;
  let x_242 : vec4<f32> = u_xlat2;
  let x_244 : vec3<f32> = (vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec3<f32> = in_NORMAL0;
  let x_251 : vec4<f32> = x_43.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_248, vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_255 : vec3<f32> = in_NORMAL0;
  let x_257 : vec4<f32> = x_43.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_255, vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_261 : vec3<f32> = in_NORMAL0;
  let x_263 : vec4<f32> = x_43.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_261, vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_268 : vec3<f32> = u_xlat3;
  let x_269 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_268, x_269);
  let x_271 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat12;
  let x_275 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_273, x_273, x_273) * x_275);
  let x_277 : vec3<f32> = u_xlat3;
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(x_277, vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : f32 = u_xlat12;
  let x_283 : f32 = u_xlat12;
  u_xlat12 = ((-(x_281) * x_283) + 1.0f);
  let x_286 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_286);
  let x_288 : f32 = u_xlat12;
  let x_290 : f32 = x_43.unity_LightShadowBias.z;
  u_xlat12 = (x_288 * x_290);
  let x_292 : vec3<f32> = u_xlat3;
  let x_294 : f32 = u_xlat12;
  let x_297 : vec4<f32> = u_xlat1;
  let x_299 : vec3<f32> = ((-(x_292) * vec3<f32>(x_294, x_294, x_294)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_306 : f32 = x_43.unity_LightShadowBias.z;
  u_xlatb12 = !((x_306 == 0.0f));
  let x_308 : bool = u_xlatb12;
  if (x_308) {
    let x_313 : vec4<f32> = u_xlat2;
    x_310 = vec3<f32>(x_313.x, x_313.y, x_313.z);
  } else {
    let x_316 : vec4<f32> = u_xlat1;
    x_310 = vec3<f32>(x_316.x, x_316.y, x_316.z);
  }
  let x_318 : vec3<f32> = x_310;
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = x_43.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_321.y, x_321.y, x_321.y, x_321.y) * x_325);
  let x_328 : vec4<f32> = x_43.unity_MatrixVP[0i];
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_328 * vec4<f32>(x_329.x, x_329.x, x_329.x, x_329.x)) + x_332);
  let x_335 : vec4<f32> = x_43.unity_MatrixVP[2i];
  let x_336 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_335 * vec4<f32>(x_336.z, x_336.z, x_336.z, x_336.z)) + x_339);
  let x_342 : vec4<f32> = x_43.unity_MatrixVP[3i];
  let x_343 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_342 * vec4<f32>(x_343.w, x_343.w, x_343.w, x_343.w)) + x_346);
  let x_350 : f32 = u_xlat1.w;
  let x_352 : f32 = u_xlat1.z;
  u_xlat12 = min(x_350, x_352);
  let x_355 : f32 = u_xlat1.z;
  let x_357 : f32 = u_xlat12;
  u_xlat12 = (-(x_355) + x_357);
  let x_364 : f32 = x_43.unity_LightShadowBias.y;
  let x_365 : f32 = u_xlat12;
  let x_368 : f32 = u_xlat1.z;
  gl_Position.z = ((x_364 * x_365) + x_368);
  let x_372 : vec4<f32> = u_xlat1;
  let x_373 : vec3<f32> = vec3<f32>(x_372.x, x_372.y, x_372.w);
  let x_376 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_373.x, x_373.y, x_376.z, x_373.z);
  let x_379 : vec4<f32> = in_TEXCOORD0;
  let x_383 : vec4<f32> = x_43.x_Noise_ST;
  let x_387 : vec4<f32> = x_43.x_Noise_ST;
  let x_389 : vec2<f32> = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_383.x, x_383.y)) + vec2<f32>(x_387.z, x_387.w));
  let x_390 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_392 : vec4<f32> = in_TEXCOORD0;
  let x_396 : vec4<f32> = x_43.x_MainTex_ST;
  let x_400 : vec4<f32> = x_43.x_MainTex_ST;
  let x_402 : vec2<f32> = ((vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_396.x, x_396.y)) + vec2<f32>(x_400.z, x_400.w));
  let x_403 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_403.x, x_403.y, x_402.x, x_402.y);
  let x_405 : vec4<f32> = u_xlat0;
  let x_408 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_410 : vec3<f32> = (vec3<f32>(x_405.y, x_405.y, x_405.y) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.x, x_416.x, x_416.x)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_421.z);
  let x_425 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_427 : vec4<f32> = u_xlat0;
  let x_430 : vec4<f32> = u_xlat0;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427.z, x_427.z, x_427.z)) + vec3<f32>(x_430.x, x_430.y, x_430.w));
  let x_433 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_437 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_439 : vec4<f32> = in_POSITION0;
  let x_442 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_439.w, x_439.w, x_439.w)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1);
}

