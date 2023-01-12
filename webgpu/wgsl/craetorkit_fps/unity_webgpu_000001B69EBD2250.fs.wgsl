struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
  x_MaxBlurRadius : f32,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlatb1 : bool;
  var x_100 : vec2<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : f32;
  var u_xlatb4 : bool;
  var x_170 : vec2<f32>;
  var x_199 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y) * vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f)) + vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y));
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y));
  let x_42 : vec2<f32> = vec2<f32>(x_41.x, x_41.y);
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_43.z, x_43.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_50.z, x_50.w));
  u_xlat4 = vec2<f32>(x_52.x, x_52.y);
  let x_54 : vec2<f32> = u_xlat4;
  let x_60 : vec2<f32> = ((x_54 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_60.x, x_60.y);
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : vec2<f32> = ((vec2<f32>(x_63.x, x_63.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_67.z, x_67.w);
  let x_69 : vec4<f32> = u_xlat0;
  let x_73 : f32 = x_12.x_MaxBlurRadius;
  u_xlat0 = (x_69 * vec4<f32>(x_73, x_73, x_73, x_73));
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_77.x, x_77.y), vec2<f32>(x_79.x, x_79.y));
  let x_87 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat3 = dot(vec2<f32>(x_87.z, x_87.w), vec2<f32>(x_89.z, x_89.w));
  let x_96 : f32 = u_xlat1.x;
  let x_97 : f32 = u_xlat3;
  u_xlatb1 = (x_96 < x_97);
  let x_99 : bool = u_xlatb1;
  if (x_99) {
    let x_103 : vec4<f32> = u_xlat0;
    x_100 = vec2<f32>(x_103.z, x_103.w);
  } else {
    let x_106 : vec4<f32> = u_xlat0;
    x_100 = vec2<f32>(x_106.x, x_106.y);
  }
  let x_108 : vec2<f32> = x_100;
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat4.x = dot(vec2<f32>(x_111.x, x_111.y), vec2<f32>(x_113.x, x_113.y));
  let x_118 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_122 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_118.x, x_118.y, x_118.x, x_118.y) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_122.x, x_122.y, x_122.x, x_122.y));
  let x_128 : vec4<f32> = u_xlat1;
  let x_130 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_128.x, x_128.y));
  let x_131 : vec2<f32> = vec2<f32>(x_130.x, x_130.y);
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_138.z, x_138.w));
  u_xlat5 = vec2<f32>(x_140.x, x_140.y);
  let x_142 : vec2<f32> = u_xlat5;
  let x_144 : vec2<f32> = ((x_142 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_144.x, x_144.y);
  let x_147 : vec4<f32> = u_xlat1;
  let x_150 : vec2<f32> = ((vec2<f32>(x_147.x, x_147.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_150.x, x_150.y, x_151.z, x_151.w);
  let x_153 : vec4<f32> = u_xlat1;
  let x_155 : f32 = x_12.x_MaxBlurRadius;
  u_xlat1 = (x_153 * vec4<f32>(x_155, x_155, x_155, x_155));
  let x_159 : vec4<f32> = u_xlat1;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_159.x, x_159.y), vec2<f32>(x_161.x, x_161.y));
  let x_166 : f32 = u_xlat4.x;
  let x_167 : f32 = u_xlat6;
  u_xlatb4 = (x_166 < x_167);
  let x_169 : bool = u_xlatb4;
  if (x_169) {
    let x_173 : vec4<f32> = u_xlat1;
    x_170 = vec2<f32>(x_173.x, x_173.y);
  } else {
    let x_176 : vec4<f32> = u_xlat0;
    x_170 = vec2<f32>(x_176.x, x_176.y);
  }
  let x_178 : vec2<f32> = x_170;
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat0;
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat4.x = dot(vec2<f32>(x_181.x, x_181.y), vec2<f32>(x_183.x, x_183.y));
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_187.z, x_187.w), vec2<f32>(x_189.z, x_189.w));
  let x_193 : f32 = u_xlat4.x;
  let x_194 : f32 = u_xlat6;
  u_xlatb4 = (x_193 < x_194);
  let x_198 : bool = u_xlatb4;
  if (x_198) {
    let x_202 : vec4<f32> = u_xlat1;
    x_199 = vec2<f32>(x_202.z, x_202.w);
  } else {
    let x_205 : vec4<f32> = u_xlat0;
    x_199 = vec2<f32>(x_205.x, x_205.y);
  }
  let x_207 : vec2<f32> = x_199;
  let x_208 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_207.x, x_207.y, x_208.z, x_208.w);
  let x_212 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_212.x, x_212.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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

