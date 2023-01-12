struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_AOParams : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = x_12.x_MainTex_TexelSize.y;
  let x_23 : f32 = x_12.x_AOParams.z;
  u_xlat0.x = (x_19 / x_23);
  u_xlat0.y = 1.384615421f;
  u_xlat0.z = 3.230769157f;
  let x_37 : vec4<f32> = u_xlat0;
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(-0.0f, -2.769230843f, -0.0f, -6.461538315f) * vec4<f32>(x_37.y, x_37.x, x_37.z, x_37.x)) + vec4<f32>(x_43.x, x_43.y, x_43.x, x_43.y));
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_46, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(0.0f, 2.769230843f, 0.0f, 6.461538315f) * vec4<f32>(x_55.y, x_55.x, x_55.z, x_55.x)) + vec4<f32>(x_58.x, x_58.y, x_58.x, x_58.y));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_61, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_65 : vec4<f32> = u_xlat0;
  let x_68 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_65 * vec4<f32>(x_68, x_68, x_68, x_68));
  let x_71 : vec4<f32> = u_xlat1;
  let x_73 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_71 * vec4<f32>(x_73, x_73, x_73, x_73));
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_87.x, x_87.y));
  u_xlat2 = x_89;
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_93.z, x_93.w));
  u_xlat1 = x_95;
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_99.y, x_99.z, x_99.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_112 : vec2<f32> = vs_TEXCOORD1;
  let x_113 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_112);
  u_xlat3 = x_113;
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat8 = ((vec3<f32>(x_115.y, x_115.z, x_115.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_119 : vec3<f32> = u_xlat8;
  let x_120 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_119, x_120);
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
  let x_156 : f32 = u_xlat7.x;
  u_xlat7.x = (x_156 * 0.31621623f);
  let x_161 : f32 = u_xlat7.x;
  let x_163 : f32 = u_xlat2.x;
  u_xlat2.x = (x_161 * x_163);
  let x_167 : f32 = u_xlat3.x;
  let x_171 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_167 * 0.227027029f) + x_171);
  let x_178 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_178.x, x_178.y));
  u_xlat4 = x_180;
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_184.z, x_184.w));
  u_xlat0 = x_186;
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_188.y, x_188.z, x_188.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_192 : vec3<f32> = u_xlat8;
  let x_193 : vec3<f32> = u_xlat9;
  u_xlat12 = dot(x_192, x_193);
  let x_195 : f32 = u_xlat12;
  u_xlat12 = (x_195 + -0.800000012f);
  let x_197 : f32 = u_xlat12;
  u_xlat12 = (x_197 * 5.000000477f);
  let x_199 : f32 = u_xlat12;
  u_xlat12 = clamp(x_199, 0.0f, 1.0f);
  let x_202 : f32 = u_xlat12;
  u_xlat17 = ((x_202 * -2.0f) + 3.0f);
  let x_205 : f32 = u_xlat12;
  let x_206 : f32 = u_xlat12;
  u_xlat12 = (x_205 * x_206);
  let x_208 : f32 = u_xlat12;
  let x_209 : f32 = u_xlat17;
  u_xlat12 = (x_208 * x_209);
  let x_211 : f32 = u_xlat12;
  u_xlat17 = (x_211 * 0.31621623f);
  let x_213 : f32 = u_xlat12;
  let x_216 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_213 * 0.31621623f) + x_216);
  let x_220 : f32 = u_xlat4.x;
  let x_221 : f32 = u_xlat17;
  let x_224 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_220 * x_221) + x_224);
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_228.y, x_228.z, x_228.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_232 : vec3<f32> = u_xlat8;
  let x_233 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_232, x_233);
  let x_237 : f32 = u_xlat6.x;
  u_xlat6.x = (x_237 + -0.800000012f);
  let x_241 : f32 = u_xlat6.x;
  u_xlat6.x = (x_241 * 5.000000477f);
  let x_245 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_245, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat6.x;
  u_xlat11 = ((x_250 * -2.0f) + 3.0f);
  let x_254 : f32 = u_xlat6.x;
  let x_256 : f32 = u_xlat6.x;
  u_xlat6.x = (x_254 * x_256);
  let x_260 : f32 = u_xlat6.x;
  let x_261 : f32 = u_xlat11;
  u_xlat6.x = (x_260 * x_261);
  let x_265 : f32 = u_xlat6.x;
  u_xlat11 = (x_265 * 0.07027027f);
  let x_269 : f32 = u_xlat6.x;
  let x_272 : f32 = u_xlat7.x;
  u_xlat6.x = ((x_269 * 0.07027027f) + x_272);
  let x_276 : f32 = u_xlat1.x;
  let x_277 : f32 = u_xlat11;
  let x_280 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_276 * x_277) + x_280);
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat5 = ((vec3<f32>(x_284.y, x_284.z, x_284.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_288 : vec3<f32> = u_xlat8;
  let x_289 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_288, x_289);
  let x_294 : vec3<f32> = u_xlat8;
  let x_298 : vec3<f32> = ((x_294 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_299 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_299.x, x_298.x, x_298.y, x_298.z);
  let x_302 : f32 = u_xlat5.x;
  u_xlat5.x = (x_302 + -0.800000012f);
  let x_306 : f32 = u_xlat5.x;
  u_xlat5.x = (x_306 * 5.000000477f);
  let x_310 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_310, 0.0f, 1.0f);
  let x_315 : f32 = u_xlat5.x;
  u_xlat10 = ((x_315 * -2.0f) + 3.0f);
  let x_319 : f32 = u_xlat5.x;
  let x_321 : f32 = u_xlat5.x;
  u_xlat5.x = (x_319 * x_321);
  let x_325 : f32 = u_xlat5.x;
  let x_326 : f32 = u_xlat10;
  u_xlat5.x = (x_325 * x_326);
  let x_330 : f32 = u_xlat5.x;
  u_xlat10 = (x_330 * 0.07027027f);
  let x_333 : f32 = u_xlat5.x;
  let x_336 : f32 = u_xlat6.x;
  u_xlat5.x = ((x_333 * 0.07027027f) + x_336);
  let x_340 : f32 = u_xlat5.x;
  u_xlat5.x = (x_340 + 0.227027029f);
  let x_344 : f32 = u_xlat0.x;
  let x_345 : f32 = u_xlat10;
  let x_348 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_344 * x_345) + x_348);
  let x_352 : f32 = u_xlat0.x;
  let x_354 : f32 = u_xlat5.x;
  SV_Target0.x = (x_352 / x_354);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

