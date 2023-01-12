struct PGlobals {
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
  @size(12)
  padding : u32,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
}

@group(0) @binding(0) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_41 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_36 : f32 = u_xlat0.y;
  let x_46 : f32 = x_41.x_GlossMapScale;
  u_xlat3.x = ((-(x_36) * x_46) + 1.0f);
  let x_53 : f32 = u_xlat3.x;
  let x_55 : f32 = u_xlat3.x;
  u_xlat3.x = (x_53 * x_55);
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_64.x, x_64.y));
  u_xlat1 = vec3<f32>(x_66.x, x_66.y, x_66.z);
  let x_72 : vec4<f32> = x_41.x_Color;
  let x_74 : vec3<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_72.x, x_72.y, x_72.z) * x_74) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_79 : vec3<f32> = u_xlat1;
  let x_81 : vec4<f32> = x_41.x_Color;
  u_xlat1 = (x_79 * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat0;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_84.x, x_84.x, x_84.x) * x_86) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_92 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_92) * 0.959999979f) + 0.959999979f);
  let x_98 : vec3<f32> = u_xlat3;
  let x_100 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_98.x, x_98.x, x_98.x) * x_100);
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_102 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_106 : vec3<f32> = u_xlat1;
  let x_107 : vec4<f32> = u_xlat0;
  let x_110 : vec3<f32> = u_xlat3;
  let x_111 : vec3<f32> = ((x_106 * vec3<f32>(x_107.x, x_107.x, x_107.x)) + x_110);
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec3<f32> = log2(vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_122 : f32 = x_41.unity_OneOverOutputBoost;
  u_xlat9 = x_122;
  let x_123 : f32 = u_xlat9;
  u_xlat9 = clamp(x_123, 0.0f, 1.0f);
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : f32 = u_xlat9;
  let x_130 : vec3<f32> = (vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128, x_128, x_128));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec3<f32> = exp2(vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_138 : vec4<f32> = u_xlat0;
  let x_142 : f32 = x_41.unity_MaxOutputValue;
  let x_144 : f32 = x_41.unity_MaxOutputValue;
  let x_146 : f32 = x_41.unity_MaxOutputValue;
  let x_147 : vec3<f32> = vec3<f32>(x_142, x_144, x_146);
  let x_152 : vec3<f32> = min(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  u_xlat0.w = 1.0f;
  let x_162 : u32 = x_41.unity_MetaFragmentControl.x;
  let x_163 : bool = (x_162 != 0u);
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_164, vec4<bool>(x_163, x_163, x_163, x_163));
  let x_171 : u32 = x_41.unity_MetaFragmentControl.y;
  let x_172 : bool = (x_171 != 0u);
  let x_174 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_174, vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<bool>(x_172, x_172, x_172, x_172));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

