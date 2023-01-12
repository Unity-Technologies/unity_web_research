struct PGlobals {
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_29.x_Color;
  u_xlat0 = (x_25 * x_34);
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_36 * x_39);
  let x_48 : vec2<f32> = vs_TEXCOORD1;
  let x_49 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_48);
  u_xlat1 = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_53 : vec3<f32> = u_xlat1;
  let x_59 : f32 = x_29.x_EmissionColor.x;
  let x_62 : f32 = x_29.x_EmissionColor.y;
  let x_65 : f32 = x_29.x_EmissionColor.z;
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((x_53 * vec3<f32>(x_59, x_62, x_65)) + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_76 : f32 = u_xlat0.w;
  SV_Target0.w = x_76;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

