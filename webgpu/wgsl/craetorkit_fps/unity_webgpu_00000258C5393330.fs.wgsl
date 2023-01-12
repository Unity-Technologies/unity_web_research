struct PGlobals {
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(2) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(5) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat7 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_47 : vec4<f32> = u_xlat1;
  let x_56 : f32 = x_51.x_PostExposure;
  let x_58 : f32 = x_51.x_PostExposure;
  let x_60 : f32 = x_51.x_PostExposure;
  let x_62 : f32 = x_51.x_PostExposure;
  let x_63 : vec4<f32> = vec4<f32>(x_56, x_58, x_60, x_62);
  u_xlat0 = (vec4<f32>(x_47.w, x_47.x, x_47.y, x_47.z) * vec4<f32>(x_63.x, x_63.y, x_63.z, x_63.w));
  let x_70 : vec4<f32> = u_xlat0;
  let x_77 : vec3<f32> = ((vec3<f32>(x_70.y, x_70.z, x_70.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_80 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = log2(vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_85 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = ((vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_95 : vec4<f32> = u_xlat1;
  let x_101 : vec3<f32> = clamp(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat1;
  let x_109 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_111 : vec3<f32> = (vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_109.y, x_109.y, x_109.y));
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_116 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat7 = (x_116 * 0.5f);
  let x_119 : vec4<f32> = u_xlat1;
  let x_122 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_125 : f32 = u_xlat7;
  let x_127 : vec3<f32> = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_122.x, x_122.x, x_122.x)) + vec3<f32>(x_125, x_125, x_125));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec3<f32> = vec3<f32>(x_140.x, x_140.y, x_140.z);
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_141.x, x_141.y, x_141.z);
  let x_149 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_149);
  let x_151 : bool = u_xlatb1;
  if (x_151) {
    let x_154 : vec4<f32> = u_xlat0;
    let x_155 : vec3<f32> = vec3<f32>(x_154.y, x_154.z, x_154.w);
    let x_156 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
    let x_158 : vec4<f32> = u_xlat1;
    let x_162 : vec3<f32> = clamp(vec3<f32>(x_158.x, x_158.y, x_158.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_163 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_165 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_175 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_175.y, x_175.z, x_175.w, x_175.x);
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

