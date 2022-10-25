struct PGlobals {
  x_DebugVertexAttributeMode : i32,
}

@group(1) @binding(0) var<uniform> x_9 : PGlobals;

var<private> SV_TARGET0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TANGENT0 : vec4<f32>;

var<private> vs_NORMAL0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : i32 = x_9.x_DebugVertexAttributeMode;
  switch(x_13) {
    case 7i: {
      let x_47 : vec4<f32> = vs_NORMAL0;
      SV_TARGET0 = x_47;
      return;
    }
    case 6i: {
      let x_44 : vec4<f32> = vs_TANGENT0;
      SV_TARGET0 = x_44;
      return;
    }
    case 5i: {
      let x_41 : vec4<f32> = vs_COLOR0;
      SV_TARGET0 = x_41;
      return;
    }
    case 4i: {
      let x_38 : vec4<f32> = vs_TEXCOORD3;
      SV_TARGET0 = x_38;
      return;
    }
    case 3i: {
      let x_35 : vec4<f32> = vs_TEXCOORD2;
      SV_TARGET0 = x_35;
      return;
    }
    case 2i: {
      let x_32 : vec4<f32> = vs_TEXCOORD1;
      SV_TARGET0 = x_32;
      return;
    }
    case 1i: {
      let x_29 : vec4<f32> = vs_TEXCOORD0;
      SV_TARGET0 = x_29;
      return;
    }
    default: {
      SV_TARGET0 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
      return;
    }
  }
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(6) vs_TANGENT0_param : vec4<f32>, @location(5) vs_NORMAL0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TANGENT0 = vs_TANGENT0_param;
  vs_NORMAL0 = vs_NORMAL0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

