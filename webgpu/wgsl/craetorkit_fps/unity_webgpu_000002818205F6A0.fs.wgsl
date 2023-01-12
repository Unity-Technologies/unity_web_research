struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_AOParams : vec4<f32>,
  x_AOColor : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_SAOcclusionTexture_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

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
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat17 : f32;
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
  let x_35 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_37 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_35, x_35));
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_50.x, x_50.y));
  u_xlat0 = x_52;
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat5 = ((vec3<f32>(x_55.y, x_55.z, x_55.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_67 : vec4<f32> = x_30.x_SAOcclusionTexture_TexelSize;
  let x_71 : vec4<f32> = x_30.x_AOParams;
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
  let x_94 : f32 = x_30.x_RenderViewportScaleFactor;
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
  let x_145 : f32 = u_xlat7.x;
  let x_146 : f32 = u_xlat12;
  u_xlat7.x = (x_145 * x_146);
  let x_150 : f32 = u_xlat2.x;
  let x_152 : f32 = u_xlat7.x;
  let x_155 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_150 * x_152) + x_155);
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec2<f32> = -(vec2<f32>(x_158.y, x_158.x));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_161.x, x_161.y, x_160.x, x_160.y);
  let x_164 : vec4<f32> = u_xlat1;
  let x_166 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (vec4<f32>(x_164.x, x_164.z, x_164.w, x_164.y) + vec4<f32>(x_166.x, x_166.y, x_166.x, x_166.y));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_169, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec2<f32> = vs_TEXCOORD0;
  let x_176 : vec2<f32> = (vec2<f32>(x_173.x, x_173.y) + x_175);
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat1;
  let x_183 : vec2<f32> = clamp(vec2<f32>(x_179.x, x_179.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat1;
  let x_189 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_191 : vec2<f32> = (vec2<f32>(x_186.x, x_186.y) * vec2<f32>(x_189, x_189));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_197.x, x_197.y));
  u_xlat1 = x_199;
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat3 = (x_200 * vec4<f32>(x_202, x_202, x_202, x_202));
  let x_209 : vec4<f32> = u_xlat3;
  let x_211 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_209.x, x_209.y));
  u_xlat4 = x_211;
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_215.z, x_215.w));
  u_xlat3 = x_217;
  let x_218 : vec4<f32> = u_xlat4;
  let x_221 : vec3<f32> = ((vec3<f32>(x_218.y, x_218.z, x_218.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_221.x, x_222.y, x_221.y, x_221.z);
  let x_224 : vec3<f32> = u_xlat5;
  let x_225 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_224, vec3<f32>(x_225.x, x_225.z, x_225.w));
  let x_230 : f32 = u_xlat2.x;
  u_xlat2.x = (x_230 + -0.800000012f);
  let x_234 : f32 = u_xlat2.x;
  u_xlat2.x = (x_234 * 5.000000477f);
  let x_238 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_238, 0.0f, 1.0f);
  let x_242 : f32 = u_xlat2.x;
  u_xlat12 = ((x_242 * -2.0f) + 3.0f);
  let x_246 : f32 = u_xlat2.x;
  let x_248 : f32 = u_xlat2.x;
  u_xlat2.x = (x_246 * x_248);
  let x_253 : f32 = u_xlat2.x;
  let x_254 : f32 = u_xlat12;
  u_xlat17 = (x_253 * x_254);
  let x_256 : f32 = u_xlat12;
  let x_258 : f32 = u_xlat2.x;
  let x_261 : f32 = u_xlat7.x;
  u_xlat2.x = ((x_256 * x_258) + x_261);
  let x_265 : f32 = u_xlat4.x;
  let x_266 : f32 = u_xlat17;
  let x_269 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_265 * x_266) + x_269);
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat7 = ((vec3<f32>(x_272.y, x_272.z, x_272.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_276 : vec3<f32> = u_xlat5;
  let x_277 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_276, x_277);
  let x_281 : f32 = u_xlat7.x;
  u_xlat7.x = (x_281 + -0.800000012f);
  let x_285 : f32 = u_xlat7.x;
  u_xlat7.x = (x_285 * 5.000000477f);
  let x_289 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_289, 0.0f, 1.0f);
  let x_293 : f32 = u_xlat7.x;
  u_xlat12 = ((x_293 * -2.0f) + 3.0f);
  let x_297 : f32 = u_xlat7.x;
  let x_299 : f32 = u_xlat7.x;
  u_xlat7.x = (x_297 * x_299);
  let x_303 : f32 = u_xlat7.x;
  let x_304 : f32 = u_xlat12;
  u_xlat17 = (x_303 * x_304);
  let x_306 : f32 = u_xlat12;
  let x_308 : f32 = u_xlat7.x;
  let x_311 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_306 * x_308) + x_311);
  let x_315 : f32 = u_xlat3.x;
  let x_316 : f32 = u_xlat17;
  let x_319 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_315 * x_316) + x_319);
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_323.y, x_323.z, x_323.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_327 : vec3<f32> = u_xlat5;
  let x_328 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_327, x_328);
  let x_332 : f32 = u_xlat5.x;
  u_xlat5.x = (x_332 + -0.800000012f);
  let x_336 : f32 = u_xlat5.x;
  u_xlat5.x = (x_336 * 5.000000477f);
  let x_340 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_340, 0.0f, 1.0f);
  let x_345 : f32 = u_xlat5.x;
  u_xlat10 = ((x_345 * -2.0f) + 3.0f);
  let x_349 : f32 = u_xlat5.x;
  let x_351 : f32 = u_xlat5.x;
  u_xlat5.x = (x_349 * x_351);
  let x_356 : f32 = u_xlat5.x;
  let x_357 : f32 = u_xlat10;
  u_xlat15 = (x_356 * x_357);
  let x_359 : f32 = u_xlat10;
  let x_361 : f32 = u_xlat5.x;
  let x_364 : f32 = u_xlat2.x;
  u_xlat5.x = ((x_359 * x_361) + x_364);
  let x_368 : f32 = u_xlat5.x;
  u_xlat5.x = (x_368 + 1.0f);
  let x_372 : f32 = u_xlat1.x;
  let x_373 : f32 = u_xlat15;
  let x_376 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_372 * x_373) + x_376);
  let x_380 : f32 = u_xlat0.x;
  let x_382 : f32 = u_xlat5.x;
  u_xlat0.x = (x_380 / x_382);
  let x_387 : vec4<f32> = u_xlat0;
  let x_392 : vec3<f32> = x_30.x_AOColor;
  let x_393 : vec3<f32> = (vec3<f32>(x_387.x, x_387.x, x_387.x) * x_392);
  let x_394 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = u_xlat0.x;
  SV_Target0.w = x_397;
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

