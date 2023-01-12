struct PGlobals {
  x_Color : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_48 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec3<f32> = vs_TEXCOORD2;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = x_26;
  let x_33 : vec2<f32> = vs_TEXCOORD1;
  let x_34 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_33);
  u_xlat1 = x_34;
  let x_35 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_35 + -(x_36));
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_41 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z) * x_41) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_48.x_Color;
  u_xlat0 = (x_45 * x_53);
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_55 * x_58);
  let x_65 : f32 = vs_TEXCOORD3.z;
  let x_70 : f32 = x_48.x_CameraFadeParams.x;
  u_xlat1.x = (x_65 + -(x_70));
  let x_76 : f32 = u_xlat1.x;
  let x_79 : f32 = x_48.x_CameraFadeParams.y;
  u_xlat1.x = (x_76 * x_79);
  let x_83 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_83, 0.0f, 1.0f);
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
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

