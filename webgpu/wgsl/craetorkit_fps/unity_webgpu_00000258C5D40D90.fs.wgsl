struct PGlobals {
  x_SinTime : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
  unity_UseLinearSpace : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

@group(0) @binding(2) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(5) var sampler_DisplacementNoise : sampler;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var x_131 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_31 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = x_36.x_SinTime;
  let x_43 : vec3<f32> = (vec3<f32>(x_31.x, x_31.y, x_31.z) + vec3<f32>(x_41.z, x_41.z, x_41.z));
  let x_44 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_56 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = textureSample(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_56.x, x_56.y, x_56.z));
  u_xlat0.x = x_58.x;
  let x_74 : vec2<f32> = vs_TEXCOORD0;
  let x_75 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_74);
  u_xlat2 = vec3<f32>(x_75.x, x_75.y, x_75.z);
  let x_77 : vec3<f32> = u_xlat2;
  let x_80 : vec4<f32> = x_36.x_EmissionColor;
  u_xlat2 = (x_77 * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = (vec3<f32>(x_83.x, x_83.x, x_83.x) * x_85);
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_90 : vec4<f32> = u_xlat0;
  let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.z) * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = u_xlat1;
  let x_107 : vec3<f32> = ((vec3<f32>(x_100.x, x_100.y, x_100.z) * vec3<f32>(x_102.x, x_102.y, x_102.z)) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = (vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_125 : f32 = x_36.unity_UseLinearSpace;
  u_xlatb6 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_125, x_125, x_125, x_125))));
  let x_130 : bool = u_xlatb6;
  if (x_130) {
    let x_134 : vec4<f32> = u_xlat0;
    x_131 = vec3<f32>(x_134.x, x_134.y, x_134.z);
  } else {
    let x_137 : vec4<f32> = u_xlat1;
    x_131 = vec3<f32>(x_137.x, x_137.y, x_137.z);
  }
  let x_139 : vec3<f32> = x_131;
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  let x_148 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_147);
  let x_149 : vec3<f32> = vec3<f32>(x_148.x, x_148.y, x_148.z);
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : vec4<f32> = u_xlat1;
  let x_156 : vec4<f32> = x_36.x_Color;
  let x_158 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat1;
  let x_163 : vec3<f32> = log2(vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_169 : f32 = x_36.unity_OneOverOutputBoost;
  u_xlat7 = x_169;
  let x_170 : f32 = u_xlat7;
  u_xlat7 = clamp(x_170, 0.0f, 1.0f);
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : f32 = u_xlat7;
  let x_177 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175, x_175, x_175));
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat1;
  let x_182 : vec3<f32> = exp2(vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_189 : f32 = x_36.unity_MaxOutputValue;
  let x_191 : f32 = x_36.unity_MaxOutputValue;
  let x_193 : f32 = x_36.unity_MaxOutputValue;
  let x_194 : vec3<f32> = vec3<f32>(x_189, x_191, x_193);
  let x_199 : vec3<f32> = min(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  u_xlat1.w = 1.0f;
  let x_206 : u32 = x_36.unity_MetaFragmentControl.x;
  let x_207 : bool = (x_206 != 0u);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_208, vec4<bool>(x_207, x_207, x_207, x_207));
  u_xlat0.w = 1.0f;
  let x_215 : u32 = x_36.unity_MetaFragmentControl.y;
  let x_216 : bool = (x_215 != 0u);
  let x_217 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  SV_Target0 = select(x_218, x_217, vec4<bool>(x_216, x_216, x_216, x_216));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

