diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SSAOParams : vec4<f32>,
  /* @offset(32) */
  x_SourceSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_BlitTexture : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat10 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_SSAOParams.z;
  u_xlat0.x = (1.0f / x_21);
  let x_27 : f32 = u_xlat0.x;
  let x_31 : f32 = x_14.x_SourceSize.w;
  u_xlat0.x = (x_27 * x_31);
  u_xlat0.y = 1.38461542129516601562f;
  u_xlat0.z = 3.23076915740966796875f;
  let x_44 : vec4<f32> = u_xlat0;
  let x_49 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(-0.0f, -1.38461542129516601562f, -0.0f, -3.23076915740966796875f) * vec4<f32>(x_44.y, x_44.x, x_44.z, x_44.x)) + vec4<f32>(x_49.x, x_49.y, x_49.x, x_49.y));
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(0.0f, 1.38461542129516601562f, 0.0f, 3.23076915740966796875f) * vec4<f32>(x_54.y, x_54.x, x_54.z, x_54.x)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_71 : vec4<f32> = u_xlat1;
  let x_75 : f32 = x_14.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_71.x, x_71.y), x_75);
  u_xlat2 = x_76;
  let x_80 : vec4<f32> = u_xlat1;
  let x_83 : f32 = x_14.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_80.z, x_80.w), x_83);
  u_xlat1 = x_84;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_88.y, x_88.z, x_88.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_100 : vec2<f32> = vs_TEXCOORD0;
  let x_102 : f32 = x_14.x_GlobalMipBias.x;
  let x_103 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, x_100, x_102);
  u_xlat3 = x_103;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat8 = ((vec3<f32>(x_105.y, x_105.z, x_105.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_109 : vec3<f32> = u_xlat8;
  let x_110 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_109, x_110);
  let x_114 : f32 = u_xlat7.x;
  u_xlat7.x = (x_114 + -0.80000001192092895508f);
  let x_119 : f32 = u_xlat7.x;
  u_xlat7.x = (x_119 * 5.00000047683715820312f);
  let x_124 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = u_xlat7.x;
  u_xlat12 = ((x_129 * -2.0f) + 3.0f);
  let x_135 : f32 = u_xlat7.x;
  let x_137 : f32 = u_xlat7.x;
  u_xlat7.x = (x_135 * x_137);
  let x_141 : f32 = u_xlat7.x;
  let x_142 : f32 = u_xlat12;
  u_xlat7.x = (x_141 * x_142);
  let x_146 : f32 = u_xlat7.x;
  u_xlat7.x = (x_146 * 0.31621623039245605469f);
  let x_151 : f32 = u_xlat7.x;
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = (x_151 * x_153);
  let x_157 : f32 = u_xlat3.x;
  let x_161 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_157 * 0.22702702879905700684f) + x_161);
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : f32 = x_14.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_168.x, x_168.y), x_171);
  u_xlat4 = x_172;
  let x_176 : vec4<f32> = u_xlat0;
  let x_179 : f32 = x_14.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat0 = x_180;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_182.y, x_182.z, x_182.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat8;
  let x_187 : vec3<f32> = u_xlat9;
  u_xlat12 = dot(x_186, x_187);
  let x_189 : f32 = u_xlat12;
  u_xlat12 = (x_189 + -0.80000001192092895508f);
  let x_191 : f32 = u_xlat12;
  u_xlat12 = (x_191 * 5.00000047683715820312f);
  let x_193 : f32 = u_xlat12;
  u_xlat12 = clamp(x_193, 0.0f, 1.0f);
  let x_196 : f32 = u_xlat12;
  u_xlat17 = ((x_196 * -2.0f) + 3.0f);
  let x_199 : f32 = u_xlat12;
  let x_200 : f32 = u_xlat12;
  u_xlat12 = (x_199 * x_200);
  let x_202 : f32 = u_xlat12;
  let x_203 : f32 = u_xlat17;
  u_xlat12 = (x_202 * x_203);
  let x_205 : f32 = u_xlat12;
  u_xlat17 = (x_205 * 0.31621623039245605469f);
  let x_207 : f32 = u_xlat12;
  let x_210 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_207 * 0.31621623039245605469f) + x_210);
  let x_214 : f32 = u_xlat4.x;
  let x_215 : f32 = u_xlat17;
  let x_218 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_214 * x_215) + x_218);
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_222.y, x_222.z, x_222.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_226 : vec3<f32> = u_xlat8;
  let x_227 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_226, x_227);
  let x_231 : f32 = u_xlat6.x;
  u_xlat6.x = (x_231 + -0.80000001192092895508f);
  let x_235 : f32 = u_xlat6.x;
  u_xlat6.x = (x_235 * 5.00000047683715820312f);
  let x_239 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_239, 0.0f, 1.0f);
  let x_244 : f32 = u_xlat6.x;
  u_xlat11 = ((x_244 * -2.0f) + 3.0f);
  let x_248 : f32 = u_xlat6.x;
  let x_250 : f32 = u_xlat6.x;
  u_xlat6.x = (x_248 * x_250);
  let x_254 : f32 = u_xlat6.x;
  let x_255 : f32 = u_xlat11;
  u_xlat6.x = (x_254 * x_255);
  let x_259 : f32 = u_xlat6.x;
  u_xlat11 = (x_259 * 0.07027027010917663574f);
  let x_263 : f32 = u_xlat6.x;
  let x_266 : f32 = u_xlat7.x;
  u_xlat6.x = ((x_263 * 0.07027027010917663574f) + x_266);
  let x_270 : f32 = u_xlat1.x;
  let x_271 : f32 = u_xlat11;
  let x_274 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_270 * x_271) + x_274);
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat5 = ((vec3<f32>(x_278.y, x_278.z, x_278.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_282 : vec3<f32> = u_xlat8;
  let x_283 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_282, x_283);
  let x_288 : vec3<f32> = u_xlat8;
  let x_292 : vec3<f32> = ((x_288 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_293 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_293.x, x_292.x, x_292.y, x_292.z);
  let x_296 : f32 = u_xlat5.x;
  u_xlat5.x = (x_296 + -0.80000001192092895508f);
  let x_300 : f32 = u_xlat5.x;
  u_xlat5.x = (x_300 * 5.00000047683715820312f);
  let x_304 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_304, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat5.x;
  u_xlat10 = ((x_309 * -2.0f) + 3.0f);
  let x_313 : f32 = u_xlat5.x;
  let x_315 : f32 = u_xlat5.x;
  u_xlat5.x = (x_313 * x_315);
  let x_319 : f32 = u_xlat5.x;
  let x_320 : f32 = u_xlat10;
  u_xlat5.x = (x_319 * x_320);
  let x_324 : f32 = u_xlat5.x;
  u_xlat10 = (x_324 * 0.07027027010917663574f);
  let x_327 : f32 = u_xlat5.x;
  let x_330 : f32 = u_xlat6.x;
  u_xlat5.x = ((x_327 * 0.07027027010917663574f) + x_330);
  let x_334 : f32 = u_xlat5.x;
  u_xlat5.x = (x_334 + 0.22702702879905700684f);
  let x_338 : f32 = u_xlat5.x;
  u_xlat5.x = (1.0f / x_338);
  let x_342 : f32 = u_xlat0.x;
  let x_343 : f32 = u_xlat10;
  let x_346 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_342 * x_343) + x_346);
  let x_350 : f32 = u_xlat5.x;
  let x_352 : f32 = u_xlat0.x;
  SV_Target0.x = (x_350 * x_352);
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


