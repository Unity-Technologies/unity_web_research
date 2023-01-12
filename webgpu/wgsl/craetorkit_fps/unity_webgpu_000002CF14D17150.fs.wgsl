struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_AOParams : vec4<f32>,
  x_AOColor : vec3<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(0) var x_SAOcclusionTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_SAOcclusionTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_57 : vec4<f32> = x_30.x_ScreenParams;
  let x_61 : vec2<f32> = (vec2<f32>(x_57.z, x_57.w) + vec2<f32>(-1.0f, -1.0f));
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_61.x, x_61.y, x_62.z, x_62.w);
  let x_64 : vec4<f32> = u_xlat1;
  let x_68 : vec4<f32> = x_30.x_AOParams;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) / vec2<f32>(x_68.z, x_68.z));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec2<f32> = vs_TEXCOORD0;
  let x_78 : vec2<f32> = (-(vec2<f32>(x_74.x, x_74.y)) + x_77);
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat2;
  let x_85 : vec2<f32> = clamp(vec2<f32>(x_81.x, x_81.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_91 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91, x_91));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_99 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_99.x, x_99.y));
  u_xlat2 = x_101;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_104.y, x_104.z, x_104.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat5 = ((vec3<f32>(x_112.y, x_112.z, x_112.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_116 : vec3<f32> = u_xlat5;
  let x_117 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_116, x_117);
  let x_124 : f32 = u_xlat7.x;
  u_xlat7.x = (x_124 + -0.800000012f);
  let x_129 : f32 = u_xlat7.x;
  u_xlat7.x = (x_129 * 5.000000477f);
  let x_134 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_134, 0.0f, 1.0f);
  let x_139 : f32 = u_xlat7.x;
  u_xlat12 = ((x_139 * -2.0f) + 3.0f);
  let x_145 : f32 = u_xlat7.x;
  let x_147 : f32 = u_xlat7.x;
  u_xlat7.x = (x_145 * x_147);
  let x_151 : f32 = u_xlat7.x;
  let x_152 : f32 = u_xlat12;
  u_xlat7.x = (x_151 * x_152);
  let x_156 : f32 = u_xlat2.x;
  let x_158 : f32 = u_xlat7.x;
  let x_161 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_156 * x_158) + x_161);
  let x_164 : vec4<f32> = u_xlat1;
  let x_166 : vec2<f32> = -(vec2<f32>(x_164.y, x_164.x));
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_166.x, x_166.y);
  let x_170 : vec4<f32> = u_xlat1;
  let x_172 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (vec4<f32>(x_170.x, x_170.z, x_170.w, x_170.y) + vec4<f32>(x_172.x, x_172.y, x_172.x, x_172.y));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_175, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec2<f32> = vs_TEXCOORD0;
  let x_182 : vec2<f32> = (vec2<f32>(x_179.x, x_179.y) + x_181);
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_189 : vec2<f32> = clamp(vec2<f32>(x_185.x, x_185.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat1;
  let x_195 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_197 : vec2<f32> = (vec2<f32>(x_192.x, x_192.y) * vec2<f32>(x_195, x_195));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_203.x, x_203.y));
  u_xlat1 = x_205;
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat3 = (x_206 * vec4<f32>(x_208, x_208, x_208, x_208));
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_215.x, x_215.y));
  u_xlat4 = x_217;
  let x_221 : vec4<f32> = u_xlat3;
  let x_223 : vec4<f32> = textureSample(x_SAOcclusionTexture, sampler_SAOcclusionTexture, vec2<f32>(x_221.z, x_221.w));
  u_xlat3 = x_223;
  let x_224 : vec4<f32> = u_xlat4;
  let x_227 : vec3<f32> = ((vec3<f32>(x_224.y, x_224.z, x_224.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_228.y, x_227.y, x_227.z);
  let x_230 : vec3<f32> = u_xlat5;
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_230, vec3<f32>(x_231.x, x_231.z, x_231.w));
  let x_236 : f32 = u_xlat2.x;
  u_xlat2.x = (x_236 + -0.800000012f);
  let x_240 : f32 = u_xlat2.x;
  u_xlat2.x = (x_240 * 5.000000477f);
  let x_244 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_244, 0.0f, 1.0f);
  let x_248 : f32 = u_xlat2.x;
  u_xlat12 = ((x_248 * -2.0f) + 3.0f);
  let x_252 : f32 = u_xlat2.x;
  let x_254 : f32 = u_xlat2.x;
  u_xlat2.x = (x_252 * x_254);
  let x_259 : f32 = u_xlat2.x;
  let x_260 : f32 = u_xlat12;
  u_xlat17 = (x_259 * x_260);
  let x_262 : f32 = u_xlat12;
  let x_264 : f32 = u_xlat2.x;
  let x_267 : f32 = u_xlat7.x;
  u_xlat2.x = ((x_262 * x_264) + x_267);
  let x_271 : f32 = u_xlat4.x;
  let x_272 : f32 = u_xlat17;
  let x_275 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_271 * x_272) + x_275);
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat7 = ((vec3<f32>(x_278.y, x_278.z, x_278.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_282 : vec3<f32> = u_xlat5;
  let x_283 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_282, x_283);
  let x_287 : f32 = u_xlat7.x;
  u_xlat7.x = (x_287 + -0.800000012f);
  let x_291 : f32 = u_xlat7.x;
  u_xlat7.x = (x_291 * 5.000000477f);
  let x_295 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_295, 0.0f, 1.0f);
  let x_299 : f32 = u_xlat7.x;
  u_xlat12 = ((x_299 * -2.0f) + 3.0f);
  let x_303 : f32 = u_xlat7.x;
  let x_305 : f32 = u_xlat7.x;
  u_xlat7.x = (x_303 * x_305);
  let x_309 : f32 = u_xlat7.x;
  let x_310 : f32 = u_xlat12;
  u_xlat17 = (x_309 * x_310);
  let x_312 : f32 = u_xlat12;
  let x_314 : f32 = u_xlat7.x;
  let x_317 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_312 * x_314) + x_317);
  let x_321 : f32 = u_xlat3.x;
  let x_322 : f32 = u_xlat17;
  let x_325 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_321 * x_322) + x_325);
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_329.y, x_329.z, x_329.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_333 : vec3<f32> = u_xlat5;
  let x_334 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_333, x_334);
  let x_338 : f32 = u_xlat5.x;
  u_xlat5.x = (x_338 + -0.800000012f);
  let x_342 : f32 = u_xlat5.x;
  u_xlat5.x = (x_342 * 5.000000477f);
  let x_346 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_346, 0.0f, 1.0f);
  let x_351 : f32 = u_xlat5.x;
  u_xlat10 = ((x_351 * -2.0f) + 3.0f);
  let x_355 : f32 = u_xlat5.x;
  let x_357 : f32 = u_xlat5.x;
  u_xlat5.x = (x_355 * x_357);
  let x_362 : f32 = u_xlat5.x;
  let x_363 : f32 = u_xlat10;
  u_xlat15 = (x_362 * x_363);
  let x_365 : f32 = u_xlat10;
  let x_367 : f32 = u_xlat5.x;
  let x_370 : f32 = u_xlat2.x;
  u_xlat5.x = ((x_365 * x_367) + x_370);
  let x_374 : f32 = u_xlat5.x;
  u_xlat5.x = (x_374 + 1.0f);
  let x_378 : f32 = u_xlat1.x;
  let x_379 : f32 = u_xlat15;
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_378 * x_379) + x_382);
  let x_386 : f32 = u_xlat0.x;
  let x_388 : f32 = u_xlat5.x;
  u_xlat0.x = (x_386 / x_388);
  let x_394 : f32 = u_xlat0.x;
  SV_Target0.w = x_394;
  let x_399 : vec4<f32> = u_xlat0;
  let x_404 : vec3<f32> = x_30.x_AOColor;
  let x_405 : vec3<f32> = (vec3<f32>(x_399.x, x_399.x, x_399.x) * x_404);
  let x_406 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z, x_409.w);
  SV_Target1.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

