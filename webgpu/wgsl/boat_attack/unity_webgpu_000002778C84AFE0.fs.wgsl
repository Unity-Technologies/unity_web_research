diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ManualTex2SRGB : i32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_61 : vec3<f32>;
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
  u_xlat1 = (x_35 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_39 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_39);
  let x_41 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_41 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat1 = max(x_48, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_57 : i32 = x_53.x_ManualTex2SRGB;
  if ((x_57 != 0i)) {
    let x_64 : vec3<f32> = u_xlat1;
    x_61 = x_64;
  } else {
    let x_66 : vec4<f32> = u_xlat0;
    x_61 = vec3<f32>(x_66.x, x_66.y, x_66.z);
  }
  let x_68 : vec3<f32> = x_61;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_71 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_71 * x_74);
  let x_82 : vec2<f32> = vs_TEXCOORD1;
  let x_83 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_82);
  u_xlat1.x = x_83.w;
  let x_93 : f32 = u_xlat0.w;
  let x_95 : f32 = u_xlat1.x;
  SV_Target0.w = (x_93 * x_95);
  let x_99 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
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


