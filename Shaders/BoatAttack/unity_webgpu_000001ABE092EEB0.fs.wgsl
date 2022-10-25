struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SourceTexLowMip_TexelSize : vec4<f32>,
  x_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(1) var x_SourceTexLowMip : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
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
  let x_57 : vec2<f32> = ((x_51 * vec2<f32>(x_52.x, x_52.y)) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  let x_60 : vec4<f32> = u_xlat1;
  u_xlat11 = (-(vec2<f32>(x_60.x, x_60.y)) + vec2<f32>(1.0f, 1.0f));
  let x_67 : vec2<f32> = u_xlat10;
  u_xlat2 = ((-(vec4<f32>(x_67.x, x_67.y, x_67.x, x_67.y)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_75 : vec2<f32> = u_xlat10;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_75.x, x_75.y, x_75.x, x_75.y) * x_77) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_82 : vec2<f32> = u_xlat10;
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_82.x, x_82.y, x_82.x, x_82.y) * x_84) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
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
  let x_181 : vec3<f32> = vec3<f32>(x_179.x, x_179.y, x_179.z);
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = textureSampleLevel(x_SourceTexLowMip, sampler_LinearClamp, vec2<f32>(x_187.x, x_187.y), 0.0f);
  let x_190 : vec3<f32> = vec3<f32>(x_189.x, x_189.y, x_189.z);
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec2<f32> = u_xlat11;
  let x_195 : vec4<f32> = u_xlat4;
  let x_197 : vec3<f32> = (vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_200 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(x_202.x, x_202.y, x_202.z)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_210 : vec2<f32> = u_xlat11;
  let x_212 : vec4<f32> = u_xlat3;
  let x_214 : vec3<f32> = (vec3<f32>(x_210.y, x_210.y, x_210.y) * vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_214.z);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = textureSampleLevel(x_SourceTexLowMip, sampler_LinearClamp, vec2<f32>(x_220.z, x_220.w), 0.0f);
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.z);
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_229 : vec4<f32> = u_xlat0;
  let x_231 : vec4<f32> = textureSampleLevel(x_SourceTexLowMip, sampler_LinearClamp, vec2<f32>(x_229.x, x_229.y), 0.0f);
  let x_232 : vec3<f32> = vec3<f32>(x_231.x, x_231.y, x_231.z);
  let x_233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec2<f32> = u_xlat11;
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = (vec3<f32>(x_235.x, x_235.x, x_235.x) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat2;
  let x_244 : vec4<f32> = u_xlat0;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec3<f32> = ((vec3<f32>(x_242.x, x_242.x, x_242.x) * vec3<f32>(x_244.x, x_244.y, x_244.z)) + vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.y, x_252.y, x_252.y) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + vec3<f32>(x_257.x, x_257.y, x_257.w));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_266 : vec2<f32> = vs_TEXCOORD0;
  let x_272 : f32 = x_16.x_GlobalMipBias.x;
  let x_273 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_266, x_272);
  let x_274 : vec3<f32> = vec3<f32>(x_273.x, x_273.y, x_273.z);
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = u_xlat1;
  let x_282 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_289 : vec4<f32> = x_16.x_Params;
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.x, x_289.x) * vec3<f32>(x_291.x, x_291.y, x_291.z)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
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

