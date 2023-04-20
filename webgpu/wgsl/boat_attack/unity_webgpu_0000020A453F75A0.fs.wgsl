diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlat0.x = 0.0f;
  let x_23 : vec4<f32> = x_18.x_BlitTexture_TexelSize;
  let x_28 : vec2<f32> = (vec2<f32>(x_23.y, x_23.y) * vec2<f32>(3.23076915740966796875f, 1.38461542129516601562f));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_28.x, x_29.z, x_28.y);
  let x_32 : vec4<f32> = u_xlat0;
  let x_37 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(vec4<f32>(x_32.x, x_32.y, x_32.x, x_32.w)) + vec4<f32>(x_37.x, x_37.y, x_37.x, x_37.y));
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec4<f32>(x_40.x, x_40.w, x_40.x, x_40.y) + vec4<f32>(x_42.x, x_42.y, x_42.x, x_42.y));
  let x_49 : vec4<f32> = x_18.x_BlitTexture_TexelSize;
  let x_57 : vec4<f32> = x_18.x_RTHandleScale;
  let x_59 : vec2<f32> = ((-(vec2<f32>(x_49.x, x_49.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_57.x, x_57.y));
  let x_60 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_59.x, x_59.y, x_60.z);
  let x_62 : vec4<f32> = u_xlat1;
  let x_63 : vec3<f32> = u_xlat2;
  u_xlat1 = min(x_62, vec4<f32>(x_63.x, x_63.y, x_63.x, x_63.y));
  let x_77 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_18.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_77.z, x_77.w), x_82);
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_83.z);
  let x_88 : vec4<f32> = u_xlat1;
  let x_91 : f32 = x_18.x_GlobalMipBias.x;
  let x_92 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_88.x, x_88.y), x_91);
  let x_93 : vec3<f32> = vec3<f32>(x_92.x, x_92.y, x_92.z);
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_96 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_96 * vec3<f32>(0.31621623039245605469f, 0.31621623039245605469f, 0.31621623039245605469f));
  let x_100 : vec4<f32> = u_xlat1;
  let x_105 : vec3<f32> = u_xlat3;
  let x_106 : vec3<f32> = ((vec3<f32>(x_100.x, x_100.y, x_100.z) * vec3<f32>(0.07027027010917663574f, 0.07027027010917663574f, 0.07027027010917663574f)) + x_105);
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_111 : vec3<f32> = u_xlat2;
  let x_113 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = min(vec2<f32>(x_111.x, x_111.y), x_113);
  let x_115 : vec4<f32> = u_xlat0;
  let x_116 : vec3<f32> = u_xlat2;
  u_xlat0 = min(x_115, vec4<f32>(x_116.x, x_116.y, x_116.x, x_116.y));
  let x_122 : vec2<f32> = u_xlat10;
  let x_124 : f32 = x_18.x_GlobalMipBias.x;
  let x_125 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_122, x_124);
  u_xlat2 = vec3<f32>(x_125.x, x_125.y, x_125.z);
  let x_127 : vec3<f32> = u_xlat2;
  let x_131 : vec4<f32> = u_xlat1;
  let x_133 : vec3<f32> = ((x_127 * vec3<f32>(0.22702702879905700684f, 0.22702702879905700684f, 0.22702702879905700684f)) + vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_142 : f32 = x_18.x_GlobalMipBias.x;
  let x_143 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_139.x, x_139.y), x_142);
  u_xlat2 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  let x_148 : vec4<f32> = u_xlat0;
  let x_151 : f32 = x_18.x_GlobalMipBias.x;
  let x_152 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_148.z, x_148.w), x_151);
  let x_153 : vec3<f32> = vec3<f32>(x_152.x, x_152.y, x_152.z);
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec3<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((x_156 * vec3<f32>(0.31621623039245605469f, 0.31621623039245605469f, 0.31621623039245605469f)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  let x_170 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(0.07027027010917663574f, 0.07027027010917663574f, 0.07027027010917663574f)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
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


