struct PGlobals {
  unity_WorldToCamera : mat4x4<f32>,
}

@group(0) @binding(0) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraGBufferTexture2 : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

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
  let x_24 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, x_23);
  let x_26 : vec3<f32> = vec3<f32>(x_24.x, x_24.y, x_24.z);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_36 : vec3<f32> = ((vec3<f32>(x_29.x, x_29.y, x_29.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_41 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_46.unity_WorldToCamera[1i];
  u_xlat1 = (vec3<f32>(x_41.y, x_41.y, x_41.y) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_46.unity_WorldToCamera[0i];
  let x_58 : vec4<f32> = u_xlat0;
  let x_61 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.x, x_58.x)) + x_61);
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_62.x, x_62.y, x_63.z, x_62.z);
  let x_69 : vec4<f32> = x_46.unity_WorldToCamera[2i];
  let x_71 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = ((vec3<f32>(x_69.x, x_69.y, x_69.z) * vec3<f32>(x_71.z, x_71.z, x_71.z)) + vec3<f32>(x_74.x, x_74.y, x_74.w));
  let x_77 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

