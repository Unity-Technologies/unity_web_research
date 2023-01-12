struct PGlobals {
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
  unity_UseLinearSpace : f32,
}

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlatb7 : bool;
  var x_173 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_COLOR0.w;
  u_xlat0.x = (-(x_16) + 1.0f);
  let x_37 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : f32 = u_xlat1.w;
  let x_49 : f32 = x_44.x_Color.w;
  let x_52 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_40 * x_49) + -(x_52));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_44.x_Color;
  u_xlat2 = (vec3<f32>(x_59.x, x_59.y, x_59.z) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_66 : vec3<f32> = u_xlat2;
  let x_67 : vec4<f32> = vs_COLOR0;
  u_xlat2 = (x_66 * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_70);
  let x_76 : f32 = u_xlat0.x;
  u_xlatb0 = (x_76 < 0.0f);
  let x_79 : bool = u_xlatb0;
  if (((select(0i, 1i, x_79) * -1i) != 0i)) {
    discard;
  }
  let x_90 : f32 = x_44.unity_OneOverOutputBoost;
  u_xlat0.x = x_90;
  let x_93 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_93, 0.0f, 1.0f);
  let x_96 : vec3<f32> = u_xlat2;
  let x_97 : vec4<f32> = u_xlat0;
  let x_99 : vec3<f32> = (x_96 * vec3<f32>(x_97.x, x_97.x, x_97.x));
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
  let x_102 : vec4<f32> = u_xlat0;
  let x_104 : vec3<f32> = exp2(vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_111 : f32 = x_44.unity_MaxOutputValue;
  let x_113 : f32 = x_44.unity_MaxOutputValue;
  let x_115 : f32 = x_44.unity_MaxOutputValue;
  let x_116 : vec3<f32> = vec3<f32>(x_111, x_113, x_115);
  let x_121 : vec3<f32> = min(vec3<f32>(x_107.x, x_107.y, x_107.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  u_xlat0.w = 1.0f;
  let x_129 : u32 = x_44.unity_MetaFragmentControl.x;
  let x_130 : bool = (x_129 != 0u);
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_131, vec4<bool>(x_130, x_130, x_130, x_130));
  let x_136 : vec4<f32> = x_44.x_AmbientColor;
  let x_143 : vec3<f32> = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec4<f32> = x_44.x_AmbientColor;
  let x_149 : vec4<f32> = u_xlat1;
  let x_154 : vec3<f32> = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.x, x_149.y, x_149.z)) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat1;
  let x_160 : vec4<f32> = x_44.x_AmbientColor;
  let x_162 : vec3<f32> = (vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_168 : f32 = x_44.unity_UseLinearSpace;
  u_xlatb7 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_168, x_168, x_168, x_168))));
  let x_172 : bool = u_xlatb7;
  if (x_172) {
    let x_177 : vec4<f32> = x_44.x_AmbientColor;
    x_173 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  } else {
    let x_180 : vec4<f32> = u_xlat1;
    x_173 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  }
  let x_182 : vec3<f32> = x_173;
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  u_xlat1.w = 1.0f;
  let x_190 : u32 = x_44.unity_MetaFragmentControl.y;
  let x_191 : bool = (x_190 != 0u);
  let x_192 : vec4<f32> = u_xlat1;
  let x_193 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_193, x_192, vec4<bool>(x_191, x_191, x_191, x_191));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

