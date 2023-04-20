diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SourceTexLowMip_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_SourceTexLowMip : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> u_xlat15 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_SourceTexLowMip_TexelSize;
  let x_26 : vec2<f32> = ((x_13 * vec2<f32>(x_21.z, x_21.w)) + vec2<f32>(0.5f, 0.5f));
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat10 = fract(vec2<f32>(x_31.x, x_31.y));
  let x_34 : vec4<f32> = u_xlat0;
  let x_36 : vec2<f32> = floor(vec2<f32>(x_34.x, x_34.y));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_40 : vec2<f32> = u_xlat10;
  let x_44 : vec2<f32> = ((x_40 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_45.z, x_45.w);
  let x_48 : vec2<f32> = u_xlat10;
  let x_49 : vec2<f32> = u_xlat10;
  u_xlat11 = (x_48 * x_49);
  let x_51 : vec2<f32> = u_xlat11;
  let x_52 : vec4<f32> = u_xlat1;
  let x_57 : vec2<f32> = ((x_51 * vec2<f32>(x_52.x, x_52.y)) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  let x_60 : vec4<f32> = u_xlat1;
  u_xlat11 = (-(vec2<f32>(x_60.x, x_60.y)) + vec2<f32>(1.0f, 1.0f));
  let x_67 : vec2<f32> = u_xlat10;
  u_xlat2 = ((-(vec4<f32>(x_67.x, x_67.y, x_67.x, x_67.y)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_75 : vec2<f32> = u_xlat10;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_75.x, x_75.y, x_75.x, x_75.y) * x_77) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_82 : vec2<f32> = u_xlat10;
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_82.x, x_82.y, x_82.x, x_82.y) * x_84) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_88 : vec2<f32> = u_xlat11;
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat10 = (x_88 + -(vec2<f32>(x_89.x, x_89.y)));
  let x_93 : vec4<f32> = u_xlat2;
  let x_96 : vec2<f32> = u_xlat10;
  u_xlat10 = (-(vec2<f32>(x_93.z, x_93.w)) + x_96);
  let x_98 : vec2<f32> = u_xlat10;
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat11 = (x_98 + vec2<f32>(x_99.x, x_99.y));
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = u_xlat2;
  let x_106 : vec2<f32> = (vec2<f32>(x_102.x, x_102.y) + vec2<f32>(x_104.z, x_104.w));
  let x_107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_110 : vec2<f32> = u_xlat11;
  u_xlat12 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_110.x, x_110.y));
  let x_116 : vec2<f32> = u_xlat10;
  let x_117 : vec2<f32> = u_xlat12;
  let x_119 : vec2<f32> = ((x_116 * x_117) + vec2<f32>(1.0f, 1.0f));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat2;
  let x_123 : vec2<f32> = vec2<f32>(x_122.x, x_122.y);
  u_xlat10 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_123.x, x_123.y));
  let x_128 : vec4<f32> = u_xlat1;
  let x_130 : vec2<f32> = u_xlat10;
  let x_132 : vec2<f32> = ((vec2<f32>(x_128.x, x_128.y) * x_130) + vec2<f32>(-1.0f, -1.0f));
  let x_133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_132.x, x_132.y);
  let x_136 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_136.x, x_136.y, x_136.x, x_136.y) + vec4<f32>(x_138.z, x_138.y, x_138.x, x_138.y));
  let x_141 : vec4<f32> = u_xlat0;
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y) + vec4<f32>(x_143.z, x_143.w, x_143.x, x_143.w));
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_146 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = x_16.x_SourceTexLowMip_TexelSize;
  u_xlat0 = (x_149 * vec4<f32>(x_151.x, x_151.y, x_151.x, x_151.y));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_154, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_157 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_157 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_159 : vec4<f32> = u_xlat3;
  let x_161 : vec4<f32> = x_16.x_SourceTexLowMip_TexelSize;
  u_xlat3 = (x_159 * vec4<f32>(x_161.x, x_161.y, x_161.x, x_161.y));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = min(x_164, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_176 : vec4<f32> = u_xlat3;
  let x_179 : vec4<f32> = textureSampleLevel(x_SourceTexLowMip, sampler_LinearClamp, vec2<f32>(x_176.z, x_176.w), 0.0f);
  u_xlat4 = x_179;
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec4<f32> = textureSampleLevel(x_SourceTexLowMip, sampler_LinearClamp, vec2<f32>(x_183.x, x_183.y), 0.0f);
  u_xlat3 = x_185;
  let x_186 : vec2<f32> = u_xlat11;
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_186.x, x_186.x, x_186.x, x_186.x) * x_188);
  let x_190 : vec4<f32> = u_xlat2;
  let x_192 : vec4<f32> = u_xlat3;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat3 = ((vec4<f32>(x_190.x, x_190.x, x_190.x, x_190.x) * x_192) + x_194);
  let x_196 : vec2<f32> = u_xlat11;
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_196.y, x_196.y, x_196.y, x_196.y) * x_198);
  let x_203 : vec4<f32> = u_xlat0;
  let x_205 : vec4<f32> = textureSampleLevel(x_SourceTexLowMip, sampler_LinearClamp, vec2<f32>(x_203.z, x_203.w), 0.0f);
  u_xlat4 = x_205;
  let x_209 : vec4<f32> = u_xlat0;
  let x_211 : vec4<f32> = textureSampleLevel(x_SourceTexLowMip, sampler_LinearClamp, vec2<f32>(x_209.x, x_209.y), 0.0f);
  u_xlat0 = x_211;
  let x_212 : vec2<f32> = u_xlat11;
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_212.x, x_212.x, x_212.x, x_212.x) * x_214);
  let x_216 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_216.x, x_216.x, x_216.x, x_216.x) * x_218) + x_220);
  let x_222 : vec4<f32> = u_xlat2;
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec4<f32>(x_222.y, x_222.y, x_222.y, x_222.y) * x_224) + x_226);
  let x_229 : vec4<f32> = u_xlat0;
  let x_231 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.w, x_229.w, x_229.w) * vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_240 : vec2<f32> = vs_TEXCOORD0;
  let x_246 : f32 = x_16.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_240, x_246);
  u_xlat1 = x_247;
  let x_248 : vec4<f32> = u_xlat1;
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.w, x_248.w, x_248.w) * vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat0;
  let x_265 : vec4<f32> = u_xlat1;
  let x_268 : vec3<f32> = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(8.0f, 8.0f, 8.0f)) + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_273 : vec4<f32> = x_16.x_Params;
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.x, x_273.x) * vec3<f32>(x_275.x, x_275.y, x_275.z)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_294 : f32 = u_xlat0.y;
  let x_296 : f32 = u_xlat0.x;
  u_xlat15 = max(x_294, x_296);
  let x_300 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_300, 0.00000999999974737875f);
  let x_304 : f32 = u_xlat15;
  let x_306 : f32 = u_xlat1.x;
  u_xlat15 = max(x_304, x_306);
  let x_308 : f32 = u_xlat15;
  u_xlat15 = (x_308 * 255.0f);
  let x_311 : f32 = u_xlat15;
  u_xlat15 = ceil(x_311);
  let x_313 : f32 = u_xlat15;
  u_xlat15 = (x_313 * 0.0039215688593685627f);
  let x_318 : vec4<f32> = u_xlat0;
  let x_320 : f32 = u_xlat15;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) / vec3<f32>(x_320, x_320, x_320));
  let x_323 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : f32 = u_xlat15;
  SV_Target0.w = x_325;
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


