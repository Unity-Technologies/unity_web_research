struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_35.x, x_35.y, x_35.z));
  let x_38 : vec3<f32> = u_xlat0;
  let x_41 : vec4<f32> = vs_COLOR0;
  let x_46 : vec4<f32> = x_30.unity_FogColor;
  u_xlat0 = ((x_38 * vec3<f32>(x_41.x, x_41.y, x_41.z)) + -(vec3<f32>(x_46.x, x_46.y, x_46.z)));
  let x_54 : f32 = vs_TEXCOORD0;
  u_xlat3 = x_54;
  let x_55 : f32 = u_xlat3;
  u_xlat3 = clamp(x_55, 0.0f, 1.0f);
  let x_61 : f32 = u_xlat3;
  let x_63 : vec3<f32> = u_xlat0;
  let x_66 : vec4<f32> = x_30.unity_FogColor;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61, x_61, x_61) * x_63) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

