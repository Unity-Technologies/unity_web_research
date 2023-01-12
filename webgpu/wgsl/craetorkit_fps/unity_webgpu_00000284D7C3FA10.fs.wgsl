struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_AOParams : vec4<f32>,
  x_SAOcclusionTexture_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(0) var x_SAOcclusionTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_SAOcclusionTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat17 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat15 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_13.x, x_13.y, x_14.z, x_14.w);
  let x_16 : vec4<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_22.x, x_22.y, x_23.z, x_23.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_34 : f32 = x_29.x_RenderViewportScaleFactor;
  let x_36 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_34, x_34));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_49 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_49.x, x_49.y));
  u_xlat0 = x_51;
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat5 = ((vec3<f32>(x_55.y, x_55.z, x_55.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_67 : vec4<f32> = x_29.x_SAOcclusionTexture_TexelSize;
  let x_71 : vec4<f32> = x_29.x_AOParams;
  let x_73 : vec2<f32> = (vec2<f32>(x_67.x, x_67.y) / vec2<f32>(x_71.z, x_71.z));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec2<f32> = (-(vec2<f32>(x_77.x, x_77.y)) + x_80);
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_82.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_88 : vec2<f32> = clamp(vec2<f32>(x_84.x, x_84.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat2;
  let x_94 : f32 = x_29.x_RenderViewportScaleFactor;
  let x_96 : vec2<f32> = (vec2<f32>(x_91.x, x_91.y) * vec2<f32>(x_94, x_94));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_102.x, x_102.y));
  u_xlat2 = x_104;
  let x_106 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_106.y, x_106.z, x_106.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_110 : vec3<f32> = u_xlat5;
  let x_111 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_110, x_111);
  let x_118 : f32 = u_xlat7.x;
  u_xlat7.x = (x_118 + -0.800000012f);
  let x_123 : f32 = u_xlat7.x;
  u_xlat7.x = (x_123 * 5.000000477f);
  let x_128 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_128, 0.0f, 1.0f);
  let x_133 : f32 = u_xlat7.x;
  u_xlat12 = ((x_133 * -2.0f) + 3.0f);
  let x_139 : f32 = u_xlat7.x;
  let x_141 : f32 = u_xlat7.x;
  u_xlat7.x = (x_139 * x_141);
  let x_146 : f32 = u_xlat7.x;
  let x_147 : f32 = u_xlat12;
  u_xlat17 = (x_146 * x_147);
  let x_149 : f32 = u_xlat12;
  let x_151 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_149 * x_151) + 1.0f);
  let x_156 : f32 = u_xlat2.x;
  let x_157 : f32 = u_xlat17;
  let x_160 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_156 * x_157) + x_160);
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec2<f32> = -(vec2<f32>(x_163.y, x_163.x));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_166.x, x_166.y, x_165.x, x_165.y);
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (vec4<f32>(x_169.x, x_169.z, x_169.w, x_169.y) + vec4<f32>(x_171.x, x_171.y, x_171.x, x_171.y));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_174, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec2<f32> = vs_TEXCOORD0;
  let x_181 : vec2<f32> = (vec2<f32>(x_178.x, x_178.y) + x_180);
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat1;
  let x_188 : vec2<f32> = clamp(vec2<f32>(x_184.x, x_184.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_188.x, x_188.y, x_189.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat1;
  let x_194 : f32 = x_29.x_RenderViewportScaleFactor;
  let x_196 : vec2<f32> = (vec2<f32>(x_191.x, x_191.y) * vec2<f32>(x_194, x_194));
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_197.w);
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_202.x, x_202.y));
  u_xlat1 = x_204;
  let x_205 : vec4<f32> = u_xlat3;
  let x_207 : f32 = x_29.x_RenderViewportScaleFactor;
  u_xlat3 = (x_205 * vec4<f32>(x_207, x_207, x_207, x_207));
  let x_214 : vec4<f32> = u_xlat3;
  let x_216 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_214.x, x_214.y));
  u_xlat4 = x_216;
  let x_220 : vec4<f32> = u_xlat3;
  let x_222 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_220.z, x_220.w));
  u_xlat3 = x_222;
  let x_223 : vec4<f32> = u_xlat4;
  let x_226 : vec3<f32> = ((vec3<f32>(x_223.y, x_223.z, x_223.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_227.y, x_226.y, x_226.z);
  let x_229 : vec3<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_229, vec3<f32>(x_230.x, x_230.z, x_230.w));
  let x_235 : f32 = u_xlat2.x;
  u_xlat2.x = (x_235 + -0.800000012f);
  let x_239 : f32 = u_xlat2.x;
  u_xlat2.x = (x_239 * 5.000000477f);
  let x_243 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_243, 0.0f, 1.0f);
  let x_247 : f32 = u_xlat2.x;
  u_xlat12 = ((x_247 * -2.0f) + 3.0f);
  let x_251 : f32 = u_xlat2.x;
  let x_253 : f32 = u_xlat2.x;
  u_xlat2.x = (x_251 * x_253);
  let x_257 : f32 = u_xlat2.x;
  let x_258 : f32 = u_xlat12;
  u_xlat17 = (x_257 * x_258);
  let x_260 : f32 = u_xlat12;
  let x_262 : f32 = u_xlat2.x;
  let x_265 : f32 = u_xlat7.x;
  u_xlat2.x = ((x_260 * x_262) + x_265);
  let x_269 : f32 = u_xlat4.x;
  let x_270 : f32 = u_xlat17;
  let x_273 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_269 * x_270) + x_273);
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat7 = ((vec3<f32>(x_276.y, x_276.z, x_276.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_280 : vec3<f32> = u_xlat5;
  let x_281 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_280, x_281);
  let x_285 : f32 = u_xlat7.x;
  u_xlat7.x = (x_285 + -0.800000012f);
  let x_289 : f32 = u_xlat7.x;
  u_xlat7.x = (x_289 * 5.000000477f);
  let x_293 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_293, 0.0f, 1.0f);
  let x_297 : f32 = u_xlat7.x;
  u_xlat12 = ((x_297 * -2.0f) + 3.0f);
  let x_301 : f32 = u_xlat7.x;
  let x_303 : f32 = u_xlat7.x;
  u_xlat7.x = (x_301 * x_303);
  let x_307 : f32 = u_xlat7.x;
  let x_308 : f32 = u_xlat12;
  u_xlat17 = (x_307 * x_308);
  let x_310 : f32 = u_xlat12;
  let x_312 : f32 = u_xlat7.x;
  let x_315 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_310 * x_312) + x_315);
  let x_319 : f32 = u_xlat3.x;
  let x_320 : f32 = u_xlat17;
  let x_323 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_319 * x_320) + x_323);
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_327.y, x_327.z, x_327.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_331 : vec3<f32> = u_xlat5;
  let x_332 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_331, x_332);
  let x_336 : f32 = u_xlat5.x;
  u_xlat5.x = (x_336 + -0.800000012f);
  let x_340 : f32 = u_xlat5.x;
  u_xlat5.x = (x_340 * 5.000000477f);
  let x_344 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_344, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat5.x;
  u_xlat10 = ((x_349 * -2.0f) + 3.0f);
  let x_353 : f32 = u_xlat5.x;
  let x_355 : f32 = u_xlat5.x;
  u_xlat5.x = (x_353 * x_355);
  let x_360 : f32 = u_xlat5.x;
  let x_361 : f32 = u_xlat10;
  u_xlat15 = (x_360 * x_361);
  let x_363 : f32 = u_xlat10;
  let x_365 : f32 = u_xlat5.x;
  let x_368 : f32 = u_xlat2.x;
  u_xlat5.x = ((x_363 * x_365) + x_368);
  let x_372 : f32 = u_xlat1.x;
  let x_373 : f32 = u_xlat15;
  let x_376 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_372 * x_373) + x_376);
  let x_380 : f32 = u_xlat0.x;
  let x_382 : f32 = u_xlat5.x;
  u_xlat0.x = (x_380 / x_382);
  let x_387 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = (-(vec3<f32>(x_387.x, x_387.x, x_387.x)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_392 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

