struct PGlobals {
  x_Color : vec4<f32>,
  x_Color2 : vec4<f32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
  unity_UseLinearSpace : f32,
}

var<private> vs_TEXCOORD2 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(1) var sampler_Gradient : sampler;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlatb7 : bool;
  var x_193 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : f32 = vs_TEXCOORD2;
  u_xlat0.x = (x_12 + -1.0f);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = (x_20 * -9.999998093f);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_25, 0.0f, 1.0f);
  let x_31 : vec4<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = (-(vec2<f32>(x_31.x, x_31.x)) + x_36);
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_50.x, x_50.y));
  u_xlat0.x = x_52.x;
  let x_56 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_56 * -2.0f) + 1.0f);
  let x_67 : vec2<f32> = vs_TEXCOORD0;
  let x_68 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_67);
  u_xlat2.x = x_68.z;
  let x_73 : f32 = u_xlat2.x;
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_73) + x_76);
  let x_83 : f32 = u_xlat0.x;
  u_xlatb0 = (x_83 < 0.0f);
  let x_85 : bool = u_xlatb0;
  if (((select(0i, 1i, x_85) * -1i) != 0i)) {
    discard;
  }
  let x_103 : f32 = x_99.unity_OneOverOutputBoost;
  u_xlat0.x = x_103;
  let x_106 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_106, 0.0f, 1.0f);
  let x_111 : vec4<f32> = x_99.x_Color;
  u_xlat2 = log2(vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec3<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec3<f32> = (x_114 * vec3<f32>(x_115.x, x_115.x, x_115.x));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec3<f32> = exp2(vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat0;
  let x_129 : f32 = x_99.unity_MaxOutputValue;
  let x_131 : f32 = x_99.unity_MaxOutputValue;
  let x_133 : f32 = x_99.unity_MaxOutputValue;
  let x_134 : vec3<f32> = vec3<f32>(x_129, x_131, x_133);
  let x_139 : vec3<f32> = min(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  u_xlat0.w = 1.0f;
  let x_148 : u32 = x_99.unity_MetaFragmentControl.x;
  let x_149 : bool = (x_148 != 0u);
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_150, vec4<bool>(x_149, x_149, x_149, x_149));
  let x_156 : vec4<f32> = x_99.x_Color2;
  let x_163 : vec3<f32> = ((vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_164 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec4<f32> = x_99.x_Color2;
  let x_169 : vec4<f32> = u_xlat1;
  let x_174 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.x, x_169.y, x_169.z)) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = x_99.x_Color2;
  let x_182 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_188 : f32 = x_99.unity_UseLinearSpace;
  u_xlatb7 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_188, x_188, x_188, x_188))));
  let x_192 : bool = u_xlatb7;
  if (x_192) {
    let x_197 : vec4<f32> = x_99.x_Color2;
    x_193 = vec3<f32>(x_197.x, x_197.y, x_197.z);
  } else {
    let x_200 : vec4<f32> = u_xlat1;
    x_193 = vec3<f32>(x_200.x, x_200.y, x_200.z);
  }
  let x_202 : vec3<f32> = x_193;
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  u_xlat1.w = 1.0f;
  let x_210 : u32 = x_99.unity_MetaFragmentControl.y;
  let x_211 : bool = (x_210 != 0u);
  let x_212 : vec4<f32> = u_xlat1;
  let x_213 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_213, x_212, vec4<bool>(x_211, x_211, x_211, x_211));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD2_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

