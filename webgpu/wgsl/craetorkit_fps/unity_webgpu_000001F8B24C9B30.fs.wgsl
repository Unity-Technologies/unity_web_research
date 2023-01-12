struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
}

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_138 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_37 : f32 = x_31.x_EmissionColor.x;
  let x_40 : f32 = x_31.x_EmissionColor.y;
  let x_43 : f32 = x_31.x_EmissionColor.z;
  u_xlat0 = (x_27 * vec3<f32>(x_37, x_40, x_43));
  let x_53 : vec2<f32> = vs_TEXCOORD1;
  let x_54 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_53);
  u_xlat1 = x_54;
  let x_55 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_31.x_Color;
  u_xlat1 = (x_55 * x_59);
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_61 * x_64);
  let x_71 : f32 = vs_TEXCOORD3.z;
  let x_74 : f32 = x_31.x_CameraFadeParams.x;
  u_xlat6 = (x_71 + -(x_74));
  let x_77 : f32 = u_xlat6;
  let x_79 : f32 = x_31.x_CameraFadeParams.y;
  u_xlat6 = (x_77 * x_79);
  let x_81 : f32 = u_xlat6;
  u_xlat6 = clamp(x_81, 0.0f, 1.0f);
  let x_85 : vec3<f32> = u_xlat0;
  let x_86 : f32 = u_xlat6;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_85 * vec3<f32>(x_86, x_86, x_86)) + vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_94 : f32 = u_xlat6;
  let x_97 : f32 = u_xlat1.w;
  SV_Target0.w = (x_94 * x_97);
  let x_101 : vec3<f32> = u_xlat0;
  let x_104 : vec4<f32> = x_31.unity_FogColor;
  let x_107 : vec3<f32> = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : f32 = vs_TEXCOORD0;
  u_xlat6 = x_111;
  let x_112 : f32 = u_xlat6;
  u_xlat6 = clamp(x_112, 0.0f, 1.0f);
  let x_114 : f32 = u_xlat6;
  let x_116 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = x_31.unity_FogColor;
  let x_122 : vec3<f32> = ((vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z)) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec3<f32> = u_xlat0;
  let x_126 : f32 = u_xlat6;
  u_xlat0 = (x_125 * vec3<f32>(x_126, x_126, x_126));
  let x_135 : i32 = x_31.x_DstBlend;
  u_xlatb6 = (x_135 == 1i);
  let x_137 : bool = u_xlatb6;
  if (x_137) {
    let x_141 : vec3<f32> = u_xlat0;
    x_138 = x_141;
  } else {
    let x_143 : vec4<f32> = u_xlat1;
    x_138 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  }
  let x_145 : vec3<f32> = x_138;
  let x_146 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

