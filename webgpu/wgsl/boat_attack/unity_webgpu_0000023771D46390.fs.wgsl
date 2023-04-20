diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ManualTex2SRGB : i32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_60 : vec3<f32>;
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
  u_xlat1 = (x_34 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_38 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_38);
  let x_40 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_40 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = max(x_47, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_56 : i32 = x_52.x_ManualTex2SRGB;
  if ((x_56 != 0i)) {
    let x_63 : vec3<f32> = u_xlat1;
    x_60 = x_63;
  } else {
    let x_65 : vec3<f32> = u_xlat0;
    x_60 = x_65;
  }
  let x_66 : vec3<f32> = x_60;
  u_xlat0 = x_66;
  let x_69 : vec3<f32> = u_xlat0;
  let x_72 : vec4<f32> = vs_COLOR0;
  let x_74 : vec3<f32> = (x_69 * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_75 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_83 : vec2<f32> = vs_TEXCOORD1;
  let x_84 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_83);
  u_xlat0.x = x_84.w;
  let x_92 : f32 = u_xlat0.x;
  let x_95 : f32 = vs_COLOR0.w;
  SV_Target0.w = (x_92 * x_95);
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


