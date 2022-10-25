struct PGlobals {
  x_ManualTex2SRGB : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var x_59 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat1 = max(x_28, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_32 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_32);
  let x_34 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_34 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_38 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_38);
  let x_40 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_40 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = max(x_47, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_56 : i32 = x_52.x_ManualTex2SRGB;
  if ((x_56 != 0i)) {
    let x_62 : vec3<f32> = u_xlat1;
    x_59 = x_62;
  } else {
    let x_64 : vec3<f32> = u_xlat0;
    x_59 = x_64;
  }
  let x_65 : vec3<f32> = x_59;
  u_xlat0 = x_65;
  let x_68 : vec3<f32> = u_xlat0;
  let x_71 : vec4<f32> = vs_COLOR0;
  let x_73 : vec3<f32> = (x_68 * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_82 : vec2<f32> = vs_TEXCOORD1;
  let x_83 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_82);
  u_xlat0.x = x_83.w;
  let x_91 : f32 = u_xlat0.x;
  let x_94 : f32 = vs_COLOR0.w;
  SV_Target0.w = (x_91 * x_94);
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

