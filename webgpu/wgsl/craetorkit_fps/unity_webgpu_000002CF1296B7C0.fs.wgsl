struct PGlobals {
  x_ManualTex2SRGB : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var x_60 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_28 : vec4<f32> = u_xlat0;
  u_xlat1 = max(vec3<f32>(x_28.x, x_28.y, x_28.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_33 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_33);
  let x_35 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_35 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_39 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_39);
  let x_41 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_41 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat1 = max(x_48, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_57 : i32 = x_53.x_ManualTex2SRGB;
  if ((x_57 != 0i)) {
    let x_63 : vec3<f32> = u_xlat1;
    x_60 = x_63;
  } else {
    let x_65 : vec4<f32> = u_xlat0;
    x_60 = vec3<f32>(x_65.x, x_65.y, x_65.z);
  }
  let x_67 : vec3<f32> = x_60;
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_70 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_70 * x_73);
  let x_81 : vec2<f32> = vs_TEXCOORD1;
  let x_82 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_81);
  u_xlat1.x = x_82.w;
  let x_92 : f32 = u_xlat0.w;
  let x_94 : f32 = u_xlat1.x;
  SV_Target0.w = (x_92 * x_94);
  let x_98 : vec4<f32> = u_xlat0;
  let x_99 : vec3<f32> = vec3<f32>(x_98.x, x_98.y, x_98.z);
  let x_100 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

