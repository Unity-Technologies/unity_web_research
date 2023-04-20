diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  unity_FogColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_COLOR0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_56 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_32 : f32 = u_xlat0.w;
  u_xlatb1 = (x_32 < 0.0f);
  let x_35 : bool = u_xlatb1;
  if (((select(0i, 1i, x_35) * -1i) != 0i)) {
    discard;
  }
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = vs_COLOR0;
  let x_59 : vec4<f32> = x_56.unity_FogColor;
  let x_62 : vec3<f32> = ((vec3<f32>(x_47.x, x_47.y, x_47.z) * vec3<f32>(x_51.x, x_51.y, x_51.z)) + -(vec3<f32>(x_59.x, x_59.y, x_59.z)));
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_68 : f32 = u_xlat0.w;
  SV_Target0.w = x_68;
  let x_74 : f32 = vs_TEXCOORD1;
  u_xlat6 = x_74;
  let x_75 : f32 = u_xlat6;
  u_xlat6 = clamp(x_75, 0.0f, 1.0f);
  let x_78 : f32 = u_xlat6;
  let x_80 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = x_56.unity_FogColor;
  let x_86 : vec3<f32> = ((vec3<f32>(x_78, x_78, x_78) * vec3<f32>(x_80.x, x_80.y, x_80.z)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


