struct PGlobals {
  unity_FogColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_COLOR1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_30 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_27 * vec3<f32>(x_30.x, x_30.y, x_30.z));
  let x_33 : vec3<f32> = u_xlat0;
  let x_39 : vec3<f32> = vs_COLOR1;
  u_xlat0 = ((x_33 * vec3<f32>(2.0f, 2.0f, 2.0f)) + x_39);
  let x_41 : vec3<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_44.unity_FogColor;
  u_xlat0 = (x_41 + -(vec3<f32>(x_49.x, x_49.y, x_49.z)));
  let x_57 : f32 = vs_TEXCOORD1;
  let x_59 : vec3<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_44.unity_FogColor;
  let x_64 : vec3<f32> = ((vec3<f32>(x_57, x_57, x_57) * x_59) + vec3<f32>(x_62.x, x_62.y, x_62.z));
  let x_65 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_COLOR1_param : vec3<f32>, @location(3) vs_TEXCOORD1_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_COLOR1 = vs_COLOR1_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

