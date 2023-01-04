struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SSAOParams : vec4<f32>,
  x_SourceSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_BlitTexture : sampler;

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
  let x_21 : f32 = x_14.x_SSAOParams.z;
  u_xlat0.x = (1.0f / x_21);
  let x_27 : f32 = u_xlat0.x;
  let x_30 : f32 = x_14.x_SourceSize.z;
  u_xlat0.x = (x_27 * x_30);
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec2<f32> = (vec2<f32>(x_33.x, x_33.x) * vec2<f32>(1.384615421f, 3.230769157f));
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_38.x, x_39.y, x_38.y, x_39.w);
  u_xlat0.y = 0.0f;
  u_xlat0.w = 0.0f;
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(x_47) + vec4<f32>(x_51.x, x_51.y, x_51.x, x_51.y));
  let x_54 : vec4<f32> = u_xlat0;
  let x_55 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (x_54 + vec4<f32>(x_55.x, x_55.y, x_55.x, x_55.y));
  let x_69 : vec4<f32> = u_xlat1;
  let x_73 : f32 = x_14.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_69.x, x_69.y), x_73);
  u_xlat2 = x_74;
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : f32 = x_14.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_78.z, x_78.w), x_81);
  u_xlat1 = x_82;
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_86.y, x_86.z, x_86.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_98 : vec2<f32> = vs_TEXCOORD0;
  let x_100 : f32 = x_14.x_GlobalMipBias.x;
  let x_101 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, x_98, x_100);
  u_xlat3 = x_101;
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat8 = ((vec3<f32>(x_103.y, x_103.z, x_103.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_107 : vec3<f32> = u_xlat8;
  let x_108 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_107, x_108);
  let x_112 : f32 = u_xlat7.x;
  u_xlat7.x = (x_112 + -0.800000012f);
  let x_117 : f32 = u_xlat7.x;
  u_xlat7.x = (x_117 * 5.000000477f);
  let x_122 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_122, 0.0f, 1.0f);
  let x_127 : f32 = u_xlat7.x;
  u_xlat12 = ((x_127 * -2.0f) + 3.0f);
  let x_133 : f32 = u_xlat7.x;
  let x_135 : f32 = u_xlat7.x;
  u_xlat7.x = (x_133 * x_135);
  let x_139 : f32 = u_xlat7.x;
  let x_140 : f32 = u_xlat12;
  u_xlat7.x = (x_139 * x_140);
  let x_144 : f32 = u_xlat7.x;
  u_xlat7.x = (x_144 * 0.31621623f);
  let x_149 : f32 = u_xlat7.x;
  let x_151 : f32 = u_xlat2.x;
  u_xlat2.x = (x_149 * x_151);
  let x_155 : f32 = u_xlat3.x;
  let x_159 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_155 * 0.227027029f) + x_159);
  let x_166 : vec4<f32> = u_xlat0;
  let x_169 : f32 = x_14.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat4 = x_170;
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : f32 = x_14.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_174.z, x_174.w), x_177);
  u_xlat0 = x_178;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_180.y, x_180.z, x_180.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat8;
  let x_185 : vec3<f32> = u_xlat9;
  u_xlat12 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat12;
  u_xlat12 = (x_187 + -0.800000012f);
  let x_189 : f32 = u_xlat12;
  u_xlat12 = (x_189 * 5.000000477f);
  let x_191 : f32 = u_xlat12;
  u_xlat12 = clamp(x_191, 0.0f, 1.0f);
  let x_194 : f32 = u_xlat12;
  u_xlat17 = ((x_194 * -2.0f) + 3.0f);
  let x_197 : f32 = u_xlat12;
  let x_198 : f32 = u_xlat12;
  u_xlat12 = (x_197 * x_198);
  let x_200 : f32 = u_xlat12;
  let x_201 : f32 = u_xlat17;
  u_xlat12 = (x_200 * x_201);
  let x_203 : f32 = u_xlat12;
  u_xlat17 = (x_203 * 0.31621623f);
  let x_205 : f32 = u_xlat12;
  let x_208 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_205 * 0.31621623f) + x_208);
  let x_212 : f32 = u_xlat4.x;
  let x_213 : f32 = u_xlat17;
  let x_216 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_212 * x_213) + x_216);
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_220.y, x_220.z, x_220.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_224 : vec3<f32> = u_xlat8;
  let x_225 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat6.x;
  u_xlat6.x = (x_229 + -0.800000012f);
  let x_233 : f32 = u_xlat6.x;
  u_xlat6.x = (x_233 * 5.000000477f);
  let x_237 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_237, 0.0f, 1.0f);
  let x_242 : f32 = u_xlat6.x;
  u_xlat11 = ((x_242 * -2.0f) + 3.0f);
  let x_246 : f32 = u_xlat6.x;
  let x_248 : f32 = u_xlat6.x;
  u_xlat6.x = (x_246 * x_248);
  let x_252 : f32 = u_xlat6.x;
  let x_253 : f32 = u_xlat11;
  u_xlat6.x = (x_252 * x_253);
  let x_257 : f32 = u_xlat6.x;
  u_xlat11 = (x_257 * 0.07027027f);
  let x_261 : f32 = u_xlat6.x;
  let x_264 : f32 = u_xlat7.x;
  u_xlat6.x = ((x_261 * 0.07027027f) + x_264);
  let x_268 : f32 = u_xlat1.x;
  let x_269 : f32 = u_xlat11;
  let x_272 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_268 * x_269) + x_272);
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat5 = ((vec3<f32>(x_276.y, x_276.z, x_276.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_280 : vec3<f32> = u_xlat8;
  let x_281 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_280, x_281);
  let x_286 : vec3<f32> = u_xlat8;
  let x_290 : vec3<f32> = ((x_286 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_291 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_291.x, x_290.x, x_290.y, x_290.z);
  let x_294 : f32 = u_xlat5.x;
  u_xlat5.x = (x_294 + -0.800000012f);
  let x_298 : f32 = u_xlat5.x;
  u_xlat5.x = (x_298 * 5.000000477f);
  let x_302 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_302, 0.0f, 1.0f);
  let x_307 : f32 = u_xlat5.x;
  u_xlat10 = ((x_307 * -2.0f) + 3.0f);
  let x_311 : f32 = u_xlat5.x;
  let x_313 : f32 = u_xlat5.x;
  u_xlat5.x = (x_311 * x_313);
  let x_317 : f32 = u_xlat5.x;
  let x_318 : f32 = u_xlat10;
  u_xlat5.x = (x_317 * x_318);
  let x_322 : f32 = u_xlat5.x;
  u_xlat10 = (x_322 * 0.07027027f);
  let x_325 : f32 = u_xlat5.x;
  let x_328 : f32 = u_xlat6.x;
  u_xlat5.x = ((x_325 * 0.07027027f) + x_328);
  let x_332 : f32 = u_xlat5.x;
  u_xlat5.x = (x_332 + 0.227027029f);
  let x_336 : f32 = u_xlat5.x;
  u_xlat5.x = (1.0f / x_336);
  let x_340 : f32 = u_xlat0.x;
  let x_341 : f32 = u_xlat10;
  let x_344 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_340 * x_341) + x_344);
  let x_348 : f32 = u_xlat5.x;
  let x_350 : f32 = u_xlat0.x;
  SV_Target0.x = (x_348 * x_350);
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

