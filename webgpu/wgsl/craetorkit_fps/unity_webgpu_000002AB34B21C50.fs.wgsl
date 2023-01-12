struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_SampleScale : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

@group(0) @binding(1) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_BloomTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
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
  let x_51 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_49.x, x_49.y));
  u_xlat0 = x_51;
  u_xlat1.x = 1.0f;
  let x_59 : f32 = x_29.x_SampleScale;
  u_xlat1.z = x_59;
  let x_62 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_29.x_MainTex_TexelSize;
  u_xlat1 = (vec4<f32>(x_62.x, x_62.x, x_62.z, x_62.z) * vec4<f32>(x_67.x, x_67.y, x_67.x, x_67.y));
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.0f;
  let x_76 : f32 = x_29.x_SampleScale;
  u_xlat2.x = x_76;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec4<f32> = u_xlat2;
  let x_85 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_79.x, x_79.y, x_79.w, x_79.y)) * vec4<f32>(x_82.x, x_82.x, x_82.w, x_82.x)) + vec4<f32>(x_85.x, x_85.y, x_85.x, x_85.y));
  let x_88 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_88, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_92 : vec4<f32> = u_xlat3;
  let x_94 : f32 = x_29.x_RenderViewportScaleFactor;
  u_xlat3 = (x_92 * vec4<f32>(x_94, x_94, x_94, x_94));
  let x_101 : vec4<f32> = u_xlat3;
  let x_103 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_101.x, x_101.y));
  u_xlat4 = x_103;
  let x_107 : vec4<f32> = u_xlat3;
  let x_109 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_107.z, x_107.w));
  u_xlat3 = x_109;
  let x_110 : vec4<f32> = u_xlat3;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_110 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_114);
  let x_116 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = u_xlat2;
  let x_122 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : vec2<f32> = ((-(vec2<f32>(x_116.z, x_116.y)) * vec2<f32>(x_119.z, x_119.x)) + x_122);
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_126 : vec4<f32> = u_xlat4;
  let x_130 : vec2<f32> = clamp(vec2<f32>(x_126.x, x_126.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_131 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat4;
  let x_136 : f32 = x_29.x_RenderViewportScaleFactor;
  let x_138 : vec2<f32> = (vec2<f32>(x_133.x, x_133.y) * vec2<f32>(x_136, x_136));
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_144 : vec4<f32> = u_xlat4;
  let x_146 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_144.x, x_144.y));
  u_xlat4 = x_146;
  let x_147 : vec4<f32> = u_xlat3;
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_147 + x_148);
  let x_150 : vec4<f32> = u_xlat1;
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_150.z, x_150.w, x_150.x, x_150.w) * vec4<f32>(x_152.z, x_152.w, x_152.x, x_152.w)) + vec4<f32>(x_155.x, x_155.y, x_155.x, x_155.y));
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_158, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = u_xlat2;
  let x_168 : vec2<f32> = vs_TEXCOORD0;
  u_xlat5 = ((vec4<f32>(x_163.z, x_163.y, x_163.w, x_163.y) * vec4<f32>(x_165.z, x_165.x, x_165.w, x_165.x)) + vec4<f32>(x_168.x, x_168.y, x_168.x, x_168.y));
  let x_171 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_171, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_175 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  let x_180 : vec2<f32> = vs_TEXCOORD0;
  let x_181 : vec2<f32> = ((vec2<f32>(x_175.x, x_175.y) * vec2<f32>(x_177.x, x_177.x)) + x_180);
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
  let x_204 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_202.x, x_202.y));
  u_xlat1 = x_204;
  let x_205 : vec4<f32> = u_xlat5;
  let x_207 : f32 = x_29.x_RenderViewportScaleFactor;
  u_xlat2 = (x_205 * vec4<f32>(x_207, x_207, x_207, x_207));
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : f32 = x_29.x_RenderViewportScaleFactor;
  u_xlat4 = (x_210 * vec4<f32>(x_212, x_212, x_212, x_212));
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_218.x, x_218.y));
  u_xlat5 = x_220;
  let x_224 : vec4<f32> = u_xlat4;
  let x_226 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_224.z, x_224.w));
  u_xlat4 = x_226;
  let x_227 : vec4<f32> = u_xlat5;
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_227 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_229);
  let x_231 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_231 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_235);
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_237 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_239);
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_244.x, x_244.y));
  u_xlat3 = x_246;
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_250.z, x_250.w));
  u_xlat2 = x_252;
  let x_253 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_253 + x_254);
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_256 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_258);
  let x_260 : vec4<f32> = u_xlat1;
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_260 + x_261);
  let x_269 : vec2<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, x_269);
  u_xlat1 = x_270;
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat1;
  SV_Target0 = ((x_273 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f)) + x_277);
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

