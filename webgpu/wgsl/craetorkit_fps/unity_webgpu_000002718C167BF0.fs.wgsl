struct PGlobals {
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraFadeParams : vec4<f32>,
}

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_37 : f32 = x_30.x_EmissionColor.x;
  let x_40 : f32 = x_30.x_EmissionColor.y;
  let x_43 : f32 = x_30.x_EmissionColor.z;
  u_xlat0 = (x_27 * vec3<f32>(x_37, x_40, x_43));
  let x_53 : vec2<f32> = vs_TEXCOORD1;
  let x_54 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_53);
  u_xlat1 = x_54;
  let x_55 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_30.x_Color;
  u_xlat1 = (x_55 * x_59);
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_61 * x_64);
  let x_71 : f32 = vs_TEXCOORD3.z;
  let x_74 : f32 = x_30.x_CameraFadeParams.x;
  u_xlat6 = (x_71 + -(x_74));
  let x_77 : f32 = u_xlat6;
  let x_79 : f32 = x_30.x_CameraFadeParams.y;
  u_xlat6 = (x_77 * x_79);
  let x_81 : f32 = u_xlat6;
  u_xlat6 = clamp(x_81, 0.0f, 1.0f);
  let x_87 : vec3<f32> = u_xlat0;
  let x_88 : f32 = u_xlat6;
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec3<f32> = ((x_87 * vec3<f32>(x_88, x_88, x_88)) + vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_96 : f32 = u_xlat6;
  let x_99 : f32 = u_xlat1.w;
  SV_Target0.w = (x_96 * x_99);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

