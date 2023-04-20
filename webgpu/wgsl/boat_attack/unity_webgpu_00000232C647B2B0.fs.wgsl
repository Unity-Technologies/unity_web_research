diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_SourceSize : vec4<f32>,
  /* @offset(64) */
  x_CoCParams : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat6 : f32;

@group(0) @binding(2) var x_FullCoCTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_DofTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_26 : vec4<f32> = x_13.x_RTHandleScale;
  u_xlat0 = ((-(vec2<f32>(x_18.x, x_18.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_26.x, x_26.y));
  let x_29 : vec2<f32> = u_xlat0;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = min(x_29, x_32);
  let x_46 : vec2<f32> = u_xlat0;
  let x_52 : f32 = x_13.x_GlobalMipBias.x;
  let x_53 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, x_46, x_52);
  u_xlat6 = x_53.x;
  let x_61 : vec2<f32> = u_xlat0;
  let x_63 : f32 = x_13.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_61, x_63);
  u_xlat1 = x_64;
  let x_65 : f32 = u_xlat6;
  u_xlat0.x = (x_65 + -0.5f);
  let x_69 : vec2<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_13.x_CoCParams;
  u_xlat0.x = dot(vec2<f32>(x_69.x, x_69.x), vec2<f32>(x_73.z, x_73.z));
  let x_80 : f32 = x_13.x_SourceSize.w;
  let x_85 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_80) * 2.0f) + x_85);
  let x_90 : f32 = x_13.x_SourceSize.w;
  let x_92 : f32 = x_13.x_SourceSize.w;
  u_xlat3 = (x_90 + x_92);
  let x_95 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_95);
  let x_97 : f32 = u_xlat3;
  let x_99 : f32 = u_xlat0.x;
  u_xlat0.x = (x_97 * x_99);
  let x_103 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = u_xlat0.x;
  u_xlat3 = ((x_108 * -2.0f) + 3.0f);
  let x_114 : f32 = u_xlat0.x;
  let x_116 : f32 = u_xlat0.x;
  u_xlat0.x = (x_114 * x_116);
  let x_120 : f32 = u_xlat0.x;
  let x_121 : f32 = u_xlat3;
  u_xlat6 = (x_120 * x_121);
  let x_125 : vec4<f32> = x_13.x_RTHandleScale;
  let x_128 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_131 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) + -(vec2<f32>(x_128.x, x_128.y)));
  let x_132 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat2;
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : vec2<f32> = min(vec2<f32>(x_134.x, x_134.y), x_136);
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_144 : vec4<f32> = u_xlat2;
  let x_147 : f32 = x_13.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_DofTexture, sampler_LinearClamp, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat2 = x_148;
  let x_149 : f32 = u_xlat3;
  let x_151 : f32 = u_xlat0.x;
  let x_154 : f32 = u_xlat2.w;
  u_xlat0.x = ((x_149 * x_151) + x_154);
  let x_157 : f32 = u_xlat6;
  let x_160 : f32 = u_xlat2.w;
  let x_163 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_157) * x_160) + x_163);
  let x_168 : f32 = u_xlat2.y;
  let x_170 : f32 = u_xlat2.x;
  u_xlat3 = max(x_168, x_170);
  let x_174 : f32 = u_xlat2.z;
  let x_175 : f32 = u_xlat3;
  u_xlat2.w = max(x_174, x_175);
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_178) + x_180);
  let x_184 : vec2<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = u_xlat1;
  SV_Target0 = ((vec4<f32>(x_184.x, x_184.x, x_184.x, x_184.x) * x_186) + x_188);
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


